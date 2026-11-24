import 'package:get/get.dart';

import '../features/splash/splash_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/authentication/auth_screen.dart';
import '../features/language_setup/language_setup_screen.dart';
import '../features/home/home_screen.dart';
import '../features/language_explorer/language_explorer_screen.dart';
import '../features/ai_tutor/ai_tutor_screen.dart';
import '../features/voice_conversation/voice_conversation_screen.dart';
import '../features/pronunciation/pronunciation_screen.dart';
import '../features/listening/listening_screen.dart';
import '../features/grammar/grammar_screen.dart';
import '../features/vocabulary/vocabulary_screen.dart';
import '../features/courses/courses_screen.dart';
import '../features/challenges/challenges_screen.dart';
import '../features/progress/progress_screen.dart';
import '../features/achievements/achievements_screen.dart';
import '../features/notifications/notifications_screen.dart';
import '../features/subscription/subscription_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/settings/settings_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String auth = '/auth';
  static const String languageSetup = '/language-setup';
  static const String home = '/home';
  static const String languageExplorer = '/language-explorer';
  static const String aiTutor = '/ai-tutor';
  static const String voiceConversation = '/voice-conversation';
  static const String pronunciation = '/pronunciation';
  static const String listening = '/listening';
  static const String grammar = '/grammar';
  static const String vocabulary = '/vocabulary';
  static const String courses = '/courses';
  static const String challenges = '/challenges';
  static const String progress = '/progress';
  static const String achievements = '/achievements';
  static const String notifications = '/notifications';
  static const String subscription = '/subscription';
  static const String profile = '/profile';
  static const String settings = '/settings';

  // Sub-routes
  static const String lessonDetail = '/lesson-detail';
  static const String conversationDetail = '/conversation-detail';
  static const String vocabularyDetail = '/vocabulary-detail';
  static const String challengeDetail = '/challenge-detail';
  static const String courseDetail = '/course-detail';

  static List<GetPage> get pages => [
        GetPage(name: splash, page: () => const SplashScreen(), binding: SplashBinding()),
        GetPage(name: onboarding, page: () => const OnboardingScreen(), binding: OnboardingBinding()),
        GetPage(name: auth, page: () => const AuthScreen(), binding: AuthBinding()),
        GetPage(name: languageSetup, page: () => const LanguageSetupScreen(), binding: LanguageSetupBinding()),
        GetPage(name: home, page: () => const HomeScreen(), binding: HomeBinding()),
        GetPage(name: languageExplorer, page: () => const LanguageExplorerScreen(), binding: LanguageExplorerBinding()),
        GetPage(name: aiTutor, page: () => const AITutorScreen(), binding: AITutorBinding()),
        GetPage(name: voiceConversation, page: () => const VoiceConversationScreen(), binding: VoiceConversationBinding()),
        GetPage(name: pronunciation, page: () => const PronunciationScreen(), binding: PronunciationBinding()),
        GetPage(name: listening, page: () => const ListeningScreen(), binding: ListeningBinding()),
        GetPage(name: grammar, page: () => const GrammarScreen(), binding: GrammarBinding()),
        GetPage(name: vocabulary, page: () => const VocabularyScreen(), binding: VocabularyBinding()),
        GetPage(name: courses, page: () => const CoursesScreen(), binding: CoursesBinding()),
        GetPage(name: challenges, page: () => const ChallengesScreen(), binding: ChallengesBinding()),
        GetPage(name: progress, page: () => const ProgressScreen(), binding: ProgressBinding()),
        GetPage(name: achievements, page: () => const AchievementsScreen(), binding: AchievementsBinding()),
        GetPage(name: notifications, page: () => const NotificationsScreen(), binding: NotificationsBinding()),
        GetPage(name: subscription, page: () => const SubscriptionScreen(), binding: SubscriptionBinding()),
        GetPage(name: profile, page: () => const ProfileScreen(), binding: ProfileBinding()),
        GetPage(name: settings, page: () => const SettingsScreen(), binding: SettingsBinding()),
      ];

  static String get initialRoute => splash;

  static RouteSettings get unknownRouteSettings => const RouteSettings(name: splash);

  static GetPage get unknownRoute => GetPage(
        name: '/404',
        page: () => const SplashScreen(),
        transition: Transition.fadeIn,
      );
}