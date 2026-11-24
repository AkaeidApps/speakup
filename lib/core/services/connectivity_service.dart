import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {
  final Connectivity _connectivity = Connectivity();
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;
  final RxBool _isOnline = false.obs;
  Stream<ConnectivityResult>? _subscription;

  ConnectivityResult get connectionStatus => _connectionStatus.value;
  bool get isOnline => _isOnline.value;
  Stream<ConnectivityResult> get onConnectivityChanged => _connectivity.onConnectivityChanged;

  ConnectivityService() {
    _initialize();
  }

  Future<void> _initialize() async {
    final result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);

    _subscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    _connectionStatus.value = result;
    _isOnline.value = result != ConnectivityResult.none;
  }

  Future<bool> checkConnection() async {
    final result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
    return _isOnline.value;
  }

  @override
  void onClose() {
    _subscription?.cancel();
    super.onClose();
  }
}