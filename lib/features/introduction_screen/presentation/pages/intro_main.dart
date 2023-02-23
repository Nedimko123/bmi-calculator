import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:bmi_calculator/features/common/loader/loader.dart';
import 'package:bmi_calculator/features/introduction_screen/domain/functions/disable_intro.dart';
import 'package:bmi_calculator/features/introduction_screen/domain/providers.dart';
import 'package:bmi_calculator/features/introduction_screen/presentation/widgets/intro_pages.dart';
import 'package:bmi_calculator/features/navbar/presentation/pages/home.dart';

class IntroductionScreenMain extends ConsumerWidget {
  const IntroductionScreenMain({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isIntroShown = ref.watch(isIntroShownProvider);
    return isIntroShown.maybeWhen(
      data: (isIntroShown) {
        if (!isIntroShown) {
          return const Home();
        }
        return IntroductionScreen(
            pages: pages,
            showSkipButton: true,
            showNextButton: false,
            skip: const Text("Skip"),
            done: const Text("Done"),
            onDone: () async => disableIntro()
                .whenComplete(() => ref.refresh(isIntroShownProvider)));
      },
      orElse: () => const Scaffold(
        body: Loader(),
      ),
    );
  }
}
