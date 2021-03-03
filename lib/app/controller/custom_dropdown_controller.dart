import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeSlot {
  int id;
  String timeSlot;

  TimeSlot({this.id, this.timeSlot});
}

class CustomDropdownController extends GetxController {
  Rx<TimeSlot> timeSlotValue = Rx<TimeSlot>();

  final List<TimeSlot> timeSlotList = [
    TimeSlot(id: 1, timeSlot: "09:00-10:00"),
    TimeSlot(id: 2, timeSlot: "11:00-12:00"),
    TimeSlot(id: 3, timeSlot: "13:00-14:00"),
    TimeSlot(id: 4, timeSlot: "15:00-16:00"),
  ];

  List<DropdownMenuItem<TimeSlot>> buildTimeSlotDropdown() {
    List<DropdownMenuItem<TimeSlot>> items = List();
    for (TimeSlot timeSlot in timeSlotList) {
      items.add(DropdownMenuItem(
        value: timeSlot,
        child: Text(timeSlot.timeSlot),
      ));
    }
    return items;
  }

  onChangeTimeSlotDropdown(TimeSlot timeSlot) {
    this.timeSlotValue.value = timeSlot;
    update();
  }
}
