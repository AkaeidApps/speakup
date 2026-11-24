import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bindings.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';
import 'localization/app_localization.dart';
import '../core/constants/app_constants.dart';
import '../core/services/storage_service.dart';
import '../core/services/theme_service.dart';
import '../core/services/notification_service.dart';
import '../core/services/connectivity_service.dart';
import '../core/services/audio_service.dart';
import '../data/repositories/user_repository.dart';
import '../data/repositories/language_repository.dart';
import '../data/repositories/course_repository.dart';
import '../data/repositories/vocabulary_repository.dart';
import '../data/repositories/progress_repository.dart';
import '../features/authentication/auth_controller.dart';

class SpeakUpApp extends StatelessWidget {
  const SpeakUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      unknownRoute: AppRoutes.unknownRoute,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Get.find<ThemeService>().themeMode,
      locale: Get.find<StorageService>().locale,
      fallbackLocale: AppLocalization.fallbackLocale,
      translations: AppLocalization(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalization.supportedLocales,
      defaultTransition: Transition.cupertino,
      transitionDuration: AppConstants.pageTransition,
      enableLog: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(
              Get.find<StorageService>().textScaleFactor.clamp(0.8, 1.3),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Core Services
    Get.put<StorageService>(StorageService(), permanent: true);
    Get.put<ThemeService>(ThemeService(), permanent: true);
    Get.put<NotificationService>(NotificationService(), permanent: true);
    Get.put<ConnectivityService>(ConnectivityService(), permanent: true);
    Get.put<AudioService>(AudioService(), permanent: true);

    // Repositories
    Get.put<UserRepository>(UserRepository(), permanent: true);
    Get.put<LanguageRepository>(LanguageRepository(), permanent: true);
    Get.put<CourseRepository>(CourseRepository(), permanent: true);
    Get.put<VocabularyRepository>(VocabularyRepository(), permanent: true);
    Get.put<ProgressRepository>(ProgressRepository(), permanent: true);

    // Global Controllers
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}