import 'package:flow_builder/flow_builder.dart';
import 'package:flowbuilderdemo/services/on_boarding_flow.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static MaterialPage page() => const MaterialPage(child: Screen1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          context
              .flow<OnBoardingStages>()
              .update((state) => OnBoardingStages.stage2);
        },
      ),
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static MaterialPage page() => const MaterialPage(child: Screen2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {
          context
              .flow<OnBoardingStages>()
              .update((state) => OnBoardingStages.stage3);
        },
      ),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context
                .flow<OnBoardingStages>()
                .update((state) => OnBoardingStages.stage1);
          },
        ),
        title: const Text("Screen 2"),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  static MaterialPage page() => const MaterialPage(child: Screen3());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context
                .flow<OnBoardingStages>()
                .update((state) => OnBoardingStages.stage2);
          },
        ),
        title: const Text("Screen 3"),
      ),
    );
  }
}
