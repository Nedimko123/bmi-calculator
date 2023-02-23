import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: "BMI Calculator",
    body:
        "Simple and intuitive interface for calculating BMI with sliders to adjust height and weight with dynamic display of BMI and interpretation of what the value means.",
    image: Image.asset(
      'assets/images/bmi.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Weight History",
    body:
        "You can save your BMI data to see how it changes over time, and view it as a list or graph to help you understand your progress.",
    image: Image.asset(
      'assets/images/history.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Graph",
    body: "View your BMI over time with our unique graph.",
    image: Image.asset(
      'assets/images/graph.png',
      height: 55.sp,
    ),
  ),
  PageViewModel(
    title: "Settings",
    body:
        "Switch between lbs and kg, and centimeters and feet to match your personal preference. Additionally, choose between dark and light mode for optimal viewing experience",
    image: Image.asset(
      'assets/images/settings.png',
      height: 55.sp,
    ),
  )
];
