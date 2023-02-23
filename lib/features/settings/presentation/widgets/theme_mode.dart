import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/common/error/error.dart';
import 'package:bmi_calculator/features/common/loader/loader.dart';
import 'package:bmi_calculator/features/common/presentation/layout_design/expanded_row.dart';
import 'package:bmi_calculator/features/settings/domain/functions/switch_theme_mode.dart';
import 'package:bmi_calculator/features/settings/domain/providers.dart';

class ThemeModeSwitch extends ConsumerWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeMode = ref.watch(isDarkModeProvider);
    return ExpandedRow(flexChildrenRatio: const [
      4,
      1
    ], children: [
      Text(
        'Enable dark mode:',
        style: TextStyle(fontSize: 16.sp),
      ),
      themeMode.when(
          data: (themeMode) {
            return Switch.adaptive(
                value: themeMode,
                onChanged: (value) async => await switchThemeMode(value)
                    .whenComplete(() => ref.invalidate(isDarkModeProvider)));
          },
          error: (e, _) => ErrorBox(
                e: e.toString(),
              ),
          loading: () => const Loader())
    ]);
  }
}
