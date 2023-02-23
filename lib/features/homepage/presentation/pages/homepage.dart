import 'package:bmi_calculator/features/common/presentation/layout_design/sliver_scaffold.dart';
import 'package:bmi_calculator/features/homepage/domain/functions/save_to_db.dart';
import 'package:bmi_calculator/features/homepage/presentation/widgets/bmi_result.dart';
import 'package:bmi_calculator/features/homepage/presentation/widgets/height_slider.dart';
import 'package:bmi_calculator/features/homepage/presentation/widgets/weight_slider.dart';
import 'package:bmi_calculator/features/settings/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BMICalculator extends ConsumerWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isAmericanMode = ref.watch(isAmericanModeProvider);
    return isAmericanMode.maybeWhen(
      data: (isAmericanMode) {
        return SliverScaffold(
            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () async => saveData(ref, isAmericanMode)),
            slivers: [
              const SliverAppBar(
                centerTitle: true,
                title: Text('BMI Calculator'),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    HeightSlider(
                      isAmericanMode: isAmericanMode,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    WeightSlider(
                      isAmericanMode: isAmericanMode,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    BMIResult(
                      isAmericanMode: isAmericanMode,
                    ),
                  ],
                ),
              )
            ]);
      },
      orElse: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
