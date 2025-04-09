import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class AlarmController extends GetxController {
  var alarms = <DateTime>[].obs;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  void onInit() {
    super.onInit();
    _initializeNotifications();
  }

  Future<void> _initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> scheduleAlarm(DateTime time) async {
    final int alarmId = time.millisecondsSinceEpoch.remainder(100000);
    await AndroidAlarmManager.oneShotAt(
      time,
      alarmId,
      _alarmCallback,
      exact: true,
      wakeup: true,
    );
    alarms.add(time);
  }

  static void _alarmCallback() async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'alarm_notif',
      'Alarm Notifications',
      channelDescription: 'Channel for Alarm notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
    );
    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidDetails);
    await FlutterLocalNotificationsPlugin().show(
      0,
      'Alarm',
      'It\'s time!',
      notificationDetails,
    );
  }
}
