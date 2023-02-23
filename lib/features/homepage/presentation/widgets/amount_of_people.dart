import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class AmountOfPeopleSlider extends ConsumerWidget {
  const AmountOfPeopleSlider({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final peopleAmount = ref.watch(peopleAmountProvider.state);
    return Column(
      children: [
        Text(
          'People amount',
          style: TextStyle(fontSize: 20.sp),
        ),
        Slider(
            divisions: 24,
            min: 1,
            max: 25,
            value: peopleAmount.state.toDouble(),
            onChanged: (value) =>
                peopleAmount.update((state) => value.toInt())),
        Text(
          peopleAmount.state.toString(),
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
