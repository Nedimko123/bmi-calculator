import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class Tip extends ConsumerWidget {
  const Tip({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final tipPercentage = ref.watch(tipPercentageCalculatorProvider.state);
    final billAmount = ref.watch(billAmountProvider.state);
    final int amountOfPeople = ref.watch(peopleAmountProvider);
    double tipAmount = 0;

    if (billAmount.state != null) {
      tipAmount = billAmount.state! * tipPercentage.state;
    }
    double tipPerPerson = tipAmount.floor() / amountOfPeople;

    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Total tip / per person',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          '${tipAmount.floor()} / ${tipPerPerson.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 26.sp),
        )
      ],
    );
  }
}
