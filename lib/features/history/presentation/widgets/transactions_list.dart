// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/common/date_formatting/date_formatting.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/sheets/delete_transaction_sheet.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/transaction_info_row.dart';
import 'package:bmi_calculator/features/homepage/domain/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionModel> transactions;
  const TransactionList({
    Key? key,
    required this.transactions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: transactions.length,
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
                  transactionModel: transactions[index],
                )),
        child: Container(
            padding: EdgeInsets.all(15.sp),
            color: index % 2 != 0 ? Theme.of(context).focusColor : null,
            child: Column(
              children: [
                TransactionInfoRow(
                    text: 'Bill amount:',
                    value: transactions[index].billAmount.toStringAsFixed(2)),
                TransactionInfoRow(
                  text: 'People amount:',
                  value: transactions[index].peopleAmount.toString(),
                ),
                TransactionInfoRow(
                  text: 'Tip amount:',
                  value: (transactions[index].billAmount *
                          transactions[index].tipPercentage)
                      .toStringAsFixed(2),
                ),
                TransactionInfoRow(
                  text: 'Date:',
                  value: DateFormatting()
                      .shortMonthTime
                      .format(transactions[index].dateTime),
                ),
              ],
            )),
      );
    })));
  }
}
