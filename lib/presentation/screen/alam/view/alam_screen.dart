import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/AlarmController.dart';

class AlamScreen extends StatelessWidget {
  final AlarmController alarmController = Get.put(AlarmController());

  AlamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alarm App')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _pickTime(context),
            child: Text('Add Alarm'),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: alarmController.alarms.length,
              itemBuilder: (context, index) {
                DateTime alarm = alarmController.alarms[index];
                return ListTile(
                  title: Text(
                      '${alarm.hour}:${alarm.minute.toString().padLeft(2, '0')}'),
                  subtitle:
                  Text('${alarm.day}/${alarm.month}/${alarm.year}'),
                );
              },
            )),
          ),
        ],
      ),
    );
  }

  void _pickTime(BuildContext context) async {
    TimeOfDay? picked =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null) {
      DateTime now = DateTime.now();
      DateTime scheduledTime =
      DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      if (scheduledTime.isBefore(now)) {
        scheduledTime = scheduledTime.add(Duration(days: 1));
      }
      alarmController.scheduleAlarm(scheduledTime);
    }
  }
}
