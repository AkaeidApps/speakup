import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:get/get.dart';

import '../constants/app_constants.dart';

class NotificationService extends GetxService {
  late FlutterLocalNotificationsPlugin _notifications;
  final RxBool _initialized = false.obs;
  final RxBool _permissionGranted = false.obs;

  bool get initialized => _initialized.value;
  bool get permissionGranted => _permissionGranted.value;

  NotificationService() {
    _initialize();
  }

  Future<void> _initialize() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      settings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    _initialized.value = true;
    await _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    final androidPlugin = _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin != null) {
      final granted = await androidPlugin.requestNotificationsPermission();
      _permissionGranted.value = granted ?? false;
    }

    final iosPlugin = _notifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
    if (iosPlugin != null) {
      final granted = await iosPlugin.requestPermissions(alert: true, badge: true, sound: true);
      _permissionGranted.value = granted ?? false;
    }
  }

  void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap - navigate to relevant screen
    if (response.payload != null) {
      // Parse payload and navigate
    }
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
    NotificationPriority priority = NotificationPriority.high,
  }) async {
    if (!_initialized.value) return;

    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'speakup_channel',
      'SpeakUp AI Notifications',
      channelDescription: 'Daily learning reminders and updates',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
      color: 0xFF0F766E,
      enableVibration: true,
      playSound: true,
    );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notifications.show(id, title, body, details, payload: payload);
  }

  Future<void> scheduleDailyReminder({
    required int hour,
    required int minute,
    String title = 'Time to practice!',
    String body = 'Keep your streak going. Practice for 15 minutes today.',
  }) async {
    if (!_initialized.value || !Get.find<StorageService>().notificationsEnabled) return;

    await _notifications.zonedSchedule(
      1,
      title,
      body,
      _nextInstanceOfTime(hour, minute),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'speakup_daily',
          'Daily Reminder',
          channelDescription: 'Daily learning reminder',
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  Future<void> scheduleVocabularyReview() async {
    if (!_initialized.value || !Get.find<StorageService>().notificationsEnabled) return;

    await _notifications.zonedSchedule(
      2,
      'Vocabulary Review',
      'You have words to review. Keep your vocabulary fresh!',
      tz.TZDateTime.now(tz.local).add(const Duration(hours: 24)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'speakup_vocab',
          'Vocabulary Review',
          channelDescription: 'Vocabulary review reminders',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> scheduleStreakWarning() async {
    if (!_initialized.value || !Get.find<StorageService>().notificationsEnabled) return;

    await _notifications.zonedSchedule(
      3,
      'Streak at Risk!',
      'Complete a lesson today to keep your streak alive.',
      tz.TZDateTime.now(tz.local).add(const Duration(hours: 4)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'speakup_streak',
          'Streak Warning',
          channelDescription: 'Streak warning notifications',
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  tz.TZDateTime _nextInstanceOfTime(int hour, int minute) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduled = tz.TZDateTime(tz.local, now.year, now.month, now.day, hour, minute);
    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }
    return scheduled;
  }

  Future<void> cancelAll() async {
    await _notifications.cancelAll();
  }

  Future<void> cancel(int id) async {
    await _notifications.cancel(id);
  }
}