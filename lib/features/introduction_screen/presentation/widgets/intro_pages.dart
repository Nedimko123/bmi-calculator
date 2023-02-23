import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: "Tip Calculator",
    body:
        "Start by entering the bill amount, sliding between the tip percentage and the amount of people.",
    image: Image.asset(
      'assets/images/tip.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Tip History",
    body:
        "Press the floating action button at the main screen to save the tip in database. Long press the tip to delete it.",
    image: Image.asset(
      'assets/images/history.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Settings",
    body:
        "Use settings page to change between dark and light mode. You can also delete transaction history.",
    image: Image.asset(
      'assets/images/settings.png',
      height: 55.sp,
    ),
  )
];
