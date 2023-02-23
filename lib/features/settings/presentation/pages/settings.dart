import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bmi_calculator/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:bmi_calculator/features/settings/presentation/widgets/delete_history.dart';
import 'package:bmi_calculator/features/settings/presentation/widgets/theme_mode.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SliverScaffold(slivers: [
      const SliverAppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ThemeModeSwitch(),
              DeleteHistory(),
            ],
          ),
        ),
      )
    ]);
  }
}
