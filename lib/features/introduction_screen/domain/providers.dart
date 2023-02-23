import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bmi_calculator/features/introduction_screen/domain/functions/is_intro_shown.dart';

final isIntroShownProvider = FutureProvider<bool>((ref) => isIntroShown());
