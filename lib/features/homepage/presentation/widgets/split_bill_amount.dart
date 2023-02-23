import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class SplitBill extends ConsumerWidget {
  const SplitBill({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final double billAmount = ref.watch(billAmountProvider) ?? 0;
    final int amountOfPeople = ref.watch(peopleAmountProvider);

    final double splitBill = billAmount / amountOfPeople;
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Bill per person',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          splitBill.toStringAsFixed(2),
          style: TextStyle(fontSize: 26.sp),
        )
      ],
    );
  }
}
