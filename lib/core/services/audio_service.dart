import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:get/get.dart';

class AudioService extends GetxService {
  final AudioPlayer _player = AudioPlayer();
  final RxBool _isPlaying = false.obs;
  final RxDouble _progress = 0.0.obs;
  final Rx<Duration> _duration = Duration.zero.obs;
  final Rx<Duration> _position = Duration.zero.obs;
  final RxDouble _volume = 1.0.obs;
  final RxDouble _speed = 1.0.obs;

  AudioPlayer get player => _player;
  bool get isPlaying => _isPlaying.value;
  double get progress => _progress.value;
  Duration get duration => _duration.value;
  Duration get position => _position.value;
  double get volume => _volume.value;
  double get speed => _speed.value;

  Stream<Duration> get positionStream => _player.positionStream;
  Stream<Duration?> get durationStream => _player.durationStream;
  Stream<PlayerState> get playerStateStream => _player.playerStateStream;
  Stream<ProcessingState> get processingStateStream => _player.processingStateStream;

  AudioService() {
    _initialize();
  }

  Future<void> _initialize() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await _player.setVolume(_volume.value);
    await _player.setSpeed(_speed.value);

    _player.positionStream.listen((position) {
      _position.value = position;
      if (_duration.value.inMilliseconds > 0) {
        _progress.value = position.inMilliseconds / _duration.value.inMilliseconds;
      }
    });

    _player.durationStream.listen((duration) {
      if (duration != null) {
        _duration.value = duration;
      }
    });

    _player.playerStateStream.listen((state) {
      _isPlaying.value = state.playing;
    });
  }

  Future<void> playUrl(String url) async {
    try {
      await _player.setUrl(url);
      await _player.play();
    } catch (e) {
      // Handle error
    }
  }

  Future<void> playAsset(String assetPath) async {
    try {
      await _player.setAsset(assetPath);
      await _player.play();
    } catch (e) {
      // Handle error
    }
  }

  Future<void> playBytes(List<int> bytes) async {
    try {
      await _player.setAudioSource(AudioSource.uri(Uri.dataFromBytes(bytes)));
      await _player.play();
    } catch (e) {
      // Handle error
    }
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> seek(Duration position) async {
    await _player.seek(position);
  }

  Future<void> setVolume(double volume) async {
    _volume.value = volume.clamp(0.0, 1.0);
    await _player.setVolume(_volume.value);
  }

  Future<void> setSpeed(double speed) async {
    _speed.value = speed.clamp(0.5, 2.0);
    await _player.setSpeed(_speed.value);
  }

  Future<void> setLoopMode(LoopMode mode) async {
    await _player.setLoopMode(mode);
  }

  void dispose() {
    _player.dispose();
  }

  @override
  void onClose() {
    dispose();
    super.onClose();
  }
}