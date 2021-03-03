import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateUtil {
  static String convertDateToyMMMEd(DateTime date) {
    var format = DateFormat.yMMMEd().add_Hm();
    return date != null ? format.format(date) : null;
  }

  static String convertDateTodM(DateTime date) {
    var format = DateFormat.MMMd();
    return date != null ? format.format(date) : null;
  }

  static String convertDateToyMDFormat(DateTime date) {
    var format = DateFormat.yMd();
    return date != null ? format.format(date) : null;
  }

  static int agoCount(DateTime dateTime) {
    if (dateTime.isAfter(DateTime.now())) {
      return dateTime.difference(DateTime.now()).inDays;
    } else {
      return DateTime.now().difference(dateTime).inDays;
    }
  }

  static DateTime convertTimeToDateTime(TimeOfDay timeOfDay) {
    final now = new DateTime.now();
    return new DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  }

  static String padTwoDigit(int input) {
    String str = "";

    if (input >= 10) {
      str = input.toString();
    } else {
      str = "0" + input.toString();
    }
    return str;
  }
}
