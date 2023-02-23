import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class TipSlider extends ConsumerWidget {
  const TipSlider({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final tipPercentage = ref.watch(tipPercentageCalculatorProvider.state);
    return Column(
      children: [
        Text(
          'Tip percentage',
          style: TextStyle(fontSize: 20.sp),
        ),
        Slider(
            divisions: 10,
            min: 0.0,
            max: 0.25,
            value: tipPercentage.state,
            onChanged: (value) => tipPercentage.update((state) => value)),
        Text(
          '${(tipPercentage.state * 100).toStringAsFixed(1)}%',
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
