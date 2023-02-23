import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

void resetData(WidgetRef ref) {
  ref.invalidate(weightProvider);
  ref.invalidate(heightProvider);
}
