// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/common/presentation/layout_design/expanded_row.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';

class TransactionInfoRow extends StatelessWidget {
  final String text;
  final String value;
  const TransactionInfoRow({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedRow(children: [
      Text(
        text,
        style: TextStyle(fontSize: 16.sp),
      ),
      Text(
        value,
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
      )
    ]);
  }
}
