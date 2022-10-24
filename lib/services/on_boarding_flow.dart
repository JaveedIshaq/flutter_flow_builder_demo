import 'package:flow_builder/flow_builder.dart';
import 'package:flowbuilderdemo/views/onboarding_screens.dart';
import 'package:flutter/material.dart';

enum OnBoardingStages { stage1, stage2, stage3 }

List<Page> onGeneratePages(OnBoardingStages stage, List<Page> pages) {
  switch (stage) {
    case OnBoardingStages.stage1:
      return [Screen1.page()];
    case OnBoardingStages.stage2:
      return [Screen1.page(), Screen2.page()];
    case OnBoardingStages.stage3:
      return [Screen1.page(), Screen2.page(), Screen3.page()];
    default:
      return [Screen1.page()];
  }
}

class OnboardingFlow extends StatelessWidget {
  const OnboardingFlow({Key? key}) : super(key: key);

  static Route route() =>
      MaterialPageRoute(builder: (_) => const OnboardingFlow());

  @override
  Widget build(BuildContext context) {
    return const FlowBuilder<OnBoardingStages>(
      onGeneratePages: onGeneratePages,
      state: OnBoardingStages.stage1,
    );
  }
}
