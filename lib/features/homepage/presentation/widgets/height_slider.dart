// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class HeightSlider extends ConsumerWidget {
  final bool isAmericanMode;
  const HeightSlider({
    super.key,
    required this.isAmericanMode,
  });

  @override
  Widget build(BuildContext context, ref) {
    final height = ref.watch(heightProvider.state);
    final int heightMax = isAmericanMode ? 100 : 300;
    final String heightText = isAmericanMode
        ? "${height.state.floor() ~/ 12}'${height.state.toInt() % 12}\""
        : "${height.state.toStringAsFixed(1)} cm";
    return Column(
      children: [
        Text(
          'Height',
          style: TextStyle(fontSize: 20.sp),
        ),
        Slider(
            divisions:
                isAmericanMode ? (heightMax - 1) * 10 : (heightMax - 1) * 2,
            min: 1,
            max: heightMax.toDouble(),
            value: height.state,
            onChanged: (value) => height.update((state) => value)),
        Text(
          heightText,
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
