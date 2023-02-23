import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class WeightSlider extends ConsumerWidget {
  final bool isAmericanMode;
  const WeightSlider({
    super.key,
    required this.isAmericanMode,
  });

  @override
  Widget build(BuildContext context, ref) {
    final weight = ref.watch(weightProvider.state);
    final int weightMax = isAmericanMode ? 500 : 300;

    final String weightText = isAmericanMode
        ? '${weight.state.toStringAsFixed(1)} lbs'
        : '${weight.state.toStringAsFixed(1)} kg';

    return Column(
      children: [
        Text(
          'Weight',
          style: TextStyle(fontSize: 20.sp),
        ),
        Slider(
            divisions: (weightMax - 1) * 2,
            min: 1,
            max: weightMax.toDouble(),
            value: weight.state,
            onChanged: (value) => weight.update((state) => value)),
        Text(
          weightText,
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
