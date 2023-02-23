import 'package:intl/intl.dart';

//Use to format dates and time with dates

String durationToString(int minutes) {
  var d = Duration(minutes: minutes);
  List<String> parts = d.toString().split(':');
  return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
}

//returns 01:40 hours and minutes

//15:24
formatedTime({required int timeInSecond}) {
  int sec = timeInSecond % 60;
  int min = (timeInSecond / 60).floor();
  String minute = min.toString().length <= 1 ? "0$min" : "$min";
  String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
  return "$minute : $second";
}

class DateFormatting {
  DateFormat dailySteps = DateFormat('yyyy-MM-dd');

  //21. Nov
  DateFormat dayNumberedAndShortMonth = DateFormat('d. MMM');
  //October
  DateFormat justMonth = DateFormat('MMMM');

  DateFormat abbrDay = DateFormat('E');

  //Fri
  DateFormat justDayShort = DateFormat('EEE');

  // Oct 25, 2022
  DateFormat shortMonth = DateFormat("MMM dd, yyyy");

  // Oct 25, 12:30
  DateFormat shortMonthTime = DateFormat("MMM dd, H:mm");

  // Fri, Oct 21
  DateFormat shortDayShortMonth = DateFormat("EEE, MMM d");

  // Fri, Oct 21, 2022
  DateFormat shortDayShortMonthYear = DateFormat("EEE, MMM d, yyyy");

  // 25-10-2022
  DateFormat fullDate = DateFormat("dd-MM-yyyy");

  // 25-10-2022 12:30
  DateFormat fullDateAndTime = DateFormat("dd-MM-yyyy H:mm");

  // 15:08
  DateFormat time = DateFormat("H:mm");

//15:08:54
  DateFormat timeWithSeconds = DateFormat("H:mm:ss");

  // 12:08 PM
  DateFormat timeUS = DateFormat("h:mm a");
}

//PATTERNS https://api.flutter.dev/flutter/intl/DateFormat-class.html
// ICU Name                   Skeleton
//  --------                   --------
//  DAY                          d
//  ABBR_WEEKDAY                 E
//  WEEKDAY                      EEEE
//  ABBR_STANDALONE_MONTH        LLL
//  STANDALONE_MONTH             LLLL
//  NUM_MONTH                    M
//  NUM_MONTH_DAY                Md
//  NUM_MONTH_WEEKDAY_DAY        MEd
//  ABBR_MONTH                   MMM
//  ABBR_MONTH_DAY               MMMd
//  ABBR_MONTH_WEEKDAY_DAY       MMMEd
//  MONTH                        MMMM
//  MONTH_DAY                    MMMMd
//  MONTH_WEEKDAY_DAY            MMMMEEEEd
//  ABBR_QUARTER                 QQQ
//  QUARTER                      QQQQ
//  YEAR                         y
//  YEAR_NUM_MONTH               yM
//  YEAR_NUM_MONTH_DAY           yMd
//  YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
//  YEAR_ABBR_MONTH              yMMM
//  YEAR_ABBR_MONTH_DAY          yMMMd
//  YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
//  YEAR_MONTH                   yMMMM
//  YEAR_MONTH_DAY               yMMMMd
//  YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
//  YEAR_ABBR_QUARTER            yQQQ
//  YEAR_QUARTER                 yQQQQ
//  HOUR24                       H
//  HOUR24_MINUTE                Hm
//  HOUR24_MINUTE_SECOND         Hms
//  HOUR                         j
//  HOUR_MINUTE                  jm
//  HOUR_MINUTE_SECOND           jms
//  HOUR_MINUTE_GENERIC_TZ       jmv   (not yet implemented)
//  HOUR_MINUTE_TZ               jmz   (not yet implemented)
//  HOUR_GENERIC_TZ              jv    (not yet implemented)
//  HOUR_TZ                      jz    (not yet implemented)
//  MINUTE                       m
//  MINUTE_SECOND                ms
//  SECOND                       s