// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
//
// List<DayModel> days = [
//   DayModel(1, 'sunday'),
//   DayModel(2, 'monday'),
//   DayModel(3, 'tuesday'),
//   DayModel(4, 'wednesday'),
//   DayModel(5, 'thursday'),
//   DayModel(6, 'friday'),
//   DayModel(7, 'saturday'),
// ];
//
// extension DateTimeExtension on DateTime {
//   String? weekdayName() {
//     const Map<int, String> weekdayName = {
//       1: "monday",
//       2: "tuesday",
//       3: "wednesday",
//       4: "thursday",
//       5: "friday",
//       6: "saturday",
//       7: "sunday"
//     };
//     return weekdayName[weekday];
//   }
// }
//
// List times = [
//   {"id": -1, "time": "closed"},
//   {"id": 1, "time": "01:00 AM"},
//   {"id": 2, "time": "02:00 AM"},
//   {"id": 3, "time": "03:00 AM"},
//   {"id": 4, "time": "04:00 AM"},
//   {"id": 5, "time": "05:00 AM"},
//   {"id": 6, "time": "06:00 AM"},
//   {"id": 7, "time": "07:00 AM"},
//   {"id": 8, "time": "08:00 AM"},
//   {"id": 9, "time": "09:00 AM"},
//   {"id": 10, "time": "10:00 AM"},
//   {"id": 11, "time": "11:00 AM"},
//   {"id": 12, "time": "12:00 PM"},
//   {"id": 13, "time": "01:00 PM"},
//   {"id": 14, "time": "02:00 PM"},
//   {"id": 15, "time": "03:00 PM"},
//   {"id": 16, "time": "04:00 PM"},
//   {"id": 17, "time": "05:00 PM"},
//   {"id": 18, "time": "06:00 PM"},
//   {"id": 19, "time": "07:00 PM"},
//   {"id": 20, "time": "08:00 PM"},
//   {"id": 21, "time": "09:00 PM"},
//   {"id": 22, "time": "10:00 PM"},
//   {"id": 23, "time": "11:00 PM"},
//   {"id": 24, "time": "00:00 AM"}
// ];
//
// String? getTimeFromId(int? id) {
//   return convertToLocalTime(
//       times.firstWhere((e) => e['id'] == id, orElse: () => null)?['time']);
// }
//
// String? convertToLocalTime(String? time) {
//   if (time != null) {
//     if (time == 'closed') return time;
//     var parsedDate = DateFormat("hh:mm a", 'en_US').parse(time);
//     Locale myLocale =
//         Localizations.localeOf(scaffoldMessengerKey.currentContext!);
//     return DateFormat.jm(myLocale.toString()).format(parsedDate);
//   }
//   return null;
// }
