import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [PageViewModel()],
        ),
      ),
    );
  }
}
