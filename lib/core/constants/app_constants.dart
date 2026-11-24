class AppConstants {
  static const String appName = 'SpeakUp AI';
  static const String appTagline = 'Speak any language. Listen. Practice. Improve.';
  static const String appVersion = '1.0.0';
  static const int buildNumber = 1;

  // Firebase
  static const String firebaseProjectId = 'speakup-ai';
  static const String firebaseApiKey = 'YOUR_FIREBASE_API_KEY';
  static const String firebaseAppId = 'YOUR_FIREBASE_APP_ID';

  // Storage Keys
  static const String keyOnboardingComplete = 'onboarding_complete';
  static const String keyNativeLanguage = 'native_language';
  static const String keyTargetLanguages = 'target_languages';
  static const String keyProficiencyLevel = 'proficiency_level';
  static const String keyDailyGoal = 'daily_goal_minutes';
  static const String keyThemeMode = 'theme_mode';
  static const String keyAppLanguage = 'app_language';
  static const String keyNotificationEnabled = 'notifications_enabled';
  static const String keyVoicePreference = 'voice_preference';
  static const String keyAutoPlayAudio = 'auto_play_audio';
  static const String keyUserId = 'user_id';
  static const String keyUserToken = 'user_token';
  static const String keyGuestMode = 'guest_mode';

  // Defaults
  static const String defaultNativeLanguage = 'en';
  static const String defaultAppLanguage = 'en';
  static const int defaultDailyGoalMinutes = 15;
  static const int defaultSessionDurationMinutes = 10;

  // Limits
  static const int maxLearningLanguages = 5;
  static const int maxVocabularyPerCollection = 500;
  static const int maxConversationHistory = 100;
  static const int freeTierDailyConversations = 3;
  static const int freeTierDailyPronunciation = 5;
  static const int freeTierDailyListening = 10;

  // Animation Durations
  static const Duration fastAnimation = Duration(milliseconds: 150);
  static const Duration normalAnimation = Duration(milliseconds: 300);
  static const Duration slowAnimation = Duration(milliseconds: 500);
  static const Duration pageTransition = Duration(milliseconds: 400);

  // Audio
  static const Duration maxRecordingDuration = Duration(minutes: 5);
  static const Duration minRecordingDuration = Duration(seconds: 1);
  static const int audioSampleRate = 16000;
  static const int audioBitRate = 128000;

  // API
  static const Duration apiTimeout = Duration(seconds: 30);
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 2);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Cache
  static const Duration cacheExpiry = Duration(hours: 24);
  static const int maxCacheSize = 100 * 1024 * 1024; // 100MB

  // Feature Flags
  static const bool enableVoiceConversation = true;
  static const bool enablePronunciationAssessment = true;
  static const bool enableStreamingVoice = false;
  static const bool enableOfflineMode = true;
  static const bool enableAnalytics = true;
  static const bool enableCrashReporting = true;
}