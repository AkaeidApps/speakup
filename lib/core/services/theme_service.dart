import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_constants.dart';

class ThemeService extends GetxService {
  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  ThemeService() {
    _loadThemeMode();
  }

  void _loadThemeMode() {
    final mode = Get.find<StorageService>().themeMode;
    switch (mode) {
      case 'light':
        _themeMode.value = ThemeMode.light;
        break;
      case 'dark':
        _themeMode.value = ThemeMode.dark;
        break;
      default:
        _themeMode.value = ThemeMode.system;
    }
  }

  void updateThemeMode(String mode) {
    switch (mode) {
      case 'light':
        _themeMode.value = ThemeMode.light;
        break;
      case 'dark':
        _themeMode.value = ThemeMode.dark;
        break;
      default:
        _themeMode.value = ThemeMode.system;
    }
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode.value = mode;
    String modeString;
    switch (mode) {
      case ThemeMode.light:
        modeString = 'light';
        break;
      case ThemeMode.dark:
        modeString = 'dark';
        break;
      default:
        modeString = 'system';
    }
    Get.find<StorageService>().setThemeMode(modeString);
  }

  bool get isDarkMode {
    switch (_themeMode.value) {
      case ThemeMode.light:
        return false;
      case ThemeMode.dark:
        return true;
      case ThemeMode.system:
        return WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    }
  }
}