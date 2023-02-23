import 'package:bmi_calculator/features/homepage/data/const/bmi_advice.dart';
import 'package:bmi_calculator/features/homepage/domain/functions/calculate_bmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class BMIResult extends ConsumerWidget {
  final bool isAmericanMode;
  const BMIResult({
    super.key,
    required this.isAmericanMode,
  });

  @override
  Widget build(BuildContext context, ref) {
    final height = ref.watch(heightProvider);
    final weight = ref.watch(weightProvider);
    final double bmi = calculateBMI(
        height: height, weight: weight, isAmericanMode: isAmericanMode);
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Your BMI',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 2.h,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(fontSize: 26.sp),
            ),
            SizedBox(
              width: 2.h,
            ),
            getBMIIcon(bmi: bmi),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getBMIAdvice(bmi: bmi),
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              getBMIValue(bmi: bmi),
            ],
          ),
        ),
      ],
    );
  }
}
