import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bmi_calculator/features/common/error/sliver_error.dart';
import 'package:bmi_calculator/features/common/loader/sliver_loader.dart';
import 'package:bmi_calculator/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:bmi_calculator/features/history/domain/providers.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/empty_history.dart';
import 'package:bmi_calculator/features/history/presentation/widgets/transactions_list.dart';

class TipHistory extends ConsumerWidget {
  const TipHistory({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final transactions = ref.watch(transactionHistoryProvider);
    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('Tip history'),
      ),
      transactions.when(
          data: (transactions) => transactions.isEmpty
              ? const EmptyTransactionHistory()
              : TransactionList(transactions: transactions.reversed.toList()),
          error: (e, _) => SliverError(e: e.toString()),
          loading: () => const SliverLoader()),
    ]);
  }
}
