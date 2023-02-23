// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculator/features/common/date_formatting/date_formatting.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/empty_history.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/sheets/delete_bmi_sheet.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/transaction_info_row.dart';
import 'package:bmi_calculator/features/homepage/data/const/bmi_advice.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BMIList extends StatelessWidget {
  final List<BMIModel> bmiModels;
  const BMIList({
    Key? key,
    required this.bmiModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bmiModels.isEmpty
        ? const EmptyBMIHistory()
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: bmiModels.length,
                ((context, index) {
            return InkWell(
              onLongPress: () => showModalBottomSheet(
                  isScrollControlled: true,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.sp))),
                  context: context,
                  builder: (context) => DeleteTransactionSheet(
                        bmiModel: bmiModels[index],
                      )),
              child: Container(
                  padding: EdgeInsets.all(15.sp),
                  color: index % 2 != 0 ? Theme.of(context).focusColor : null,
                  child: Column(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            'BMI: ${bmiModels[index].bmi.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 22.sp),
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          getBMIIcon(bmi: bmiModels[index].bmi),
                        ],
                      ),
                      TransactionInfoRow(
                          text: 'Height', value: bmiModels[index].height),
                      TransactionInfoRow(
                          text: 'Weight', value: bmiModels[index].weight),
                      TransactionInfoRow(
                        text: 'Date:',
                        value: DateFormatting()
                            .shortMonthTime
                            .format(bmiModels[index].dateTime),
                      ),
                    ],
                  )),
            );
          })));
  }
}
