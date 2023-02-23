import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

void resetData(WidgetRef ref) {
  ref.invalidate(tipPercentageCalculatorProvider);
  ref.invalidate(billAmountProvider);
  ref.invalidate(peopleAmountProvider);
  ref.read(billAmountControllerProvider).clear();
}
