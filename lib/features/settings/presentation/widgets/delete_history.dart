import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/settings/presentation/widgets/sheets/delete_history_sheet.dart';

class DeleteHistory extends ConsumerWidget {
  const DeleteHistory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.sp))),
            builder: (context) => const DeleteHistorySheet()),
        child: Text(
          'Delete history',
          style: TextStyle(fontSize: 16.sp, color: Colors.red),
        ),
      ),
    );
  }
}
