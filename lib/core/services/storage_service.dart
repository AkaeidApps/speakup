import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/app_constants.dart';

class StorageService extends GetxService {
  late SharedPreferences _prefs;
  late FlutterSecureStorage _secureStorage;

  // Reactive values
  final RxBool _onboardingComplete = false.obs;
  final RxString _nativeLanguage = AppConstants.defaultNativeLanguage.obs;
  final RxList<String> _targetLanguages = <String>[].obs;
  final RxString _proficiencyLevel = 'beginner'.obs;
  final RxInt _dailyGoalMinutes = AppConstants.defaultDailyGoalMinutes.obs;
  final RxString _themeMode = 'system'.obs;
  final RxString _appLanguage = AppConstants.defaultAppLanguage.obs;
  final RxBool _notificationsEnabled = true.obs;
  final RxString _voicePreference = 'default'.obs;
  final RxBool _autoPlayAudio = true.obs;
  final RxString _userId = ''.obs;
  final RxString _userToken = ''.obs;
  final RxBool _guestMode = false.obs;
  final RxDouble _textScaleFactor = 1.0.obs;

  // Getters
  bool get onboardingComplete => _onboardingComplete.value;
  String get nativeLanguage => _nativeLanguage.value;
  List<String> get targetLanguages => _targetLanguages;
  String get proficiencyLevel => _proficiencyLevel.value;
  int get dailyGoalMinutes => _dailyGoalMinutes.value;
  String get themeMode => _themeMode.value;
  String get appLanguage => _appLanguage.value;
  bool get notificationsEnabled => _notificationsEnabled.value;
  String get voicePreference => _voicePreference.value;
  bool get autoPlayAudio => _autoPlayAudio.value;
  String get userId => _userId.value;
  String get userToken => _userToken.value;
  bool get guestMode => _guestMode.value;
  double get textScaleFactor => _textScaleFactor.value;
  Locale get locale => Locale(_appLanguage.value);

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device),
    );

    _loadPreferences();
    return this;
  }

  void _loadPreferences() {
    _onboardingComplete.value = _prefs.getBool(AppConstants.keyOnboardingComplete) ?? false;
    _nativeLanguage.value = _prefs.getString(AppConstants.keyNativeLanguage) ?? AppConstants.defaultNativeLanguage;
    _targetLanguages.value = _prefs.getStringList(AppConstants.keyTargetLanguages) ?? [];
    _proficiencyLevel.value = _prefs.getString(AppConstants.keyProficiencyLevel) ?? 'beginner';
    _dailyGoalMinutes.value = _prefs.getInt(AppConstants.keyDailyGoalMinutes) ?? AppConstants.defaultDailyGoalMinutes;
    _themeMode.value = _prefs.getString(AppConstants.keyThemeMode) ?? 'system';
    _appLanguage.value = _prefs.getString(AppConstants.keyAppLanguage) ?? AppConstants.defaultAppLanguage;
    _notificationsEnabled.value = _prefs.getBool(AppConstants.keyNotificationEnabled) ?? true;
    _voicePreference.value = _prefs.getString(AppConstants.keyVoicePreference) ?? 'default';
    _autoPlayAudio.value = _prefs.getBool(AppConstants.keyAutoPlayAudio) ?? true;
    _guestMode.value = _prefs.getBool(AppConstants.keyGuestMode) ?? false;
    _textScaleFactor.value = _prefs.getDouble('text_scale_factor') ?? 1.0;

    _loadSecureData();
  }

  Future<void> _loadSecureData() async {
    _userId.value = await _secureStorage.read(key: AppConstants.keyUserId) ?? '';
    _userToken.value = await _secureStorage.read(key: AppConstants.keyUserToken) ?? '';
  }

  // Setters
  Future<void> setOnboardingComplete(bool value) async {
    _onboardingComplete.value = value;
    await _prefs.setBool(AppConstants.keyOnboardingComplete, value);
  }

  Future<void> setNativeLanguage(String language) async {
    _nativeLanguage.value = language;
    await _prefs.setString(AppConstants.keyNativeLanguage, language);
  }

  Future<void> setTargetLanguages(List<String> languages) async {
    _targetLanguages.value = languages.take(AppConstants.maxLearningLanguages).toList();
    await _prefs.setStringList(AppConstants.keyTargetLanguages, _targetLanguages.value);
  }

  Future<void> addTargetLanguage(String language) async {
    if (!_targetLanguages.contains(language) && _targetLanguages.length < AppConstants.maxLearningLanguages) {
      _targetLanguages.add(language);
      await _prefs.setStringList(AppConstants.keyTargetLanguages, _targetLanguages);
    }
  }

  Future<void> removeTargetLanguage(String language) async {
    _targetLanguages.remove(language);
    await _prefs.setStringList(AppConstants.keyTargetLanguages, _targetLanguages);
  }

  Future<void> setProficiencyLevel(String level) async {
    _proficiencyLevel.value = level;
    await _prefs.setString(AppConstants.keyProficiencyLevel, level);
  }

  Future<void> setDailyGoalMinutes(int minutes) async {
    _dailyGoalMinutes.value = minutes.clamp(5, 120);
    await _prefs.setInt(AppConstants.keyDailyGoalMinutes, _dailyGoalMinutes.value);
  }

  Future<void> setThemeMode(String mode) async {
    _themeMode.value = mode;
    await _prefs.setString(AppConstants.keyThemeMode, mode);
    Get.find<ThemeService>().updateThemeMode(mode);
  }

  Future<void> setAppLanguage(String language) async {
    _appLanguage.value = language;
    await _prefs.setString(AppConstants.keyAppLanguage, language);
    Get.updateLocale(Locale(language));
  }

  Future<void> setNotificationsEnabled(bool enabled) async {
    _notificationsEnabled.value = enabled;
    await _prefs.setBool(AppConstants.keyNotificationEnabled, enabled);
  }

  Future<void> setVoicePreference(String preference) async {
    _voicePreference.value = preference;
    await _prefs.setString(AppConstants.keyVoicePreference, preference);
  }

  Future<void> setAutoPlayAudio(bool enabled) async {
    _autoPlayAudio.value = enabled;
    await _prefs.setBool(AppConstants.keyAutoPlayAudio, enabled);
  }

  Future<void> setUserId(String id) async {
    _userId.value = id;
    await _secureStorage.write(key: AppConstants.keyUserId, value: id);
  }

  Future<void> setUserToken(String token) async {
    _userToken.value = token;
    await _secureStorage.write(key: AppConstants.keyUserToken, value: token);
  }

  Future<void> setGuestMode(bool guest) async {
    _guestMode.value = guest;
    await _prefs.setBool(AppConstants.keyGuestMode, guest);
  }

  Future<void> setTextScaleFactor(double factor) async {
    _textScaleFactor.value = factor.clamp(0.8, 1.3);
    await _prefs.setDouble('text_scale_factor', _textScaleFactor.value);
  }

  Future<void> clearUserData() async {
    _userId.value = '';
    _userToken.value = '';
    _targetLanguages.clear();
    await _secureStorage.delete(key: AppConstants.keyUserId);
    await _secureStorage.delete(key: AppConstants.keyUserToken);
    await _prefs.remove(AppConstants.keyTargetLanguages);
  }

  Future<void> clearAll() async {
    await _prefs.clear();
    await _secureStorage.deleteAll();
    _loadPreferences();
  }
}