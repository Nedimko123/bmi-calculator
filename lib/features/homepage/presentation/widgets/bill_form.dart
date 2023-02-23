import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

class BillForm extends ConsumerWidget {
  const BillForm({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final billAmountController = ref.watch(billAmountControllerProvider);
    final billAmount = ref.watch(billAmountProvider.state);
    return Column(
      children: [
        Text(
          'Bill amount',
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 1.h,
        ),
        SizedBox(
          width: 90.w,
          child: TextFormField(
            minLines: 1,
            maxLines: 1,
            textAlign: TextAlign.left,
            keyboardType: TextInputType.number,
            textCapitalization: TextCapitalization.none,
            controller: billAmountController,
            onChanged: (value) =>
                billAmount.update((state) => double.tryParse(value)),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Bill amount',
              hintText: 'Enter bill amount',
            ),
          ),
        ),
      ],
    );
  }
}
