// ignore_for_file: depend_on_referenced_packages

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:iamevaristus_website/model/link_list.dart';
import 'package:page_transition/page_transition.dart';

import '../config/colors.dart';
import '../config/images.dart';
import 'layout/layout_checker.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const MervoLogo(),
      nextScreen: const LayoutChecker(),
      duration: 4000,
      backgroundColor: darkBlueColor,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}

class MervoLogo extends StatelessWidget {
  const MervoLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 6, child: Image.network(myLogo, height: 64)), //Image.asset(merVo, height: 64)),
          const SizedBox(height: 20),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlickMe(color: leftM, text: "M"),
                FlickMe(color: rightM, text: "E"),
                FlickMe(color: rightCross, text: "R"),
                FlickMe(color: leftCross, text: "V"),
                FlickMe(color: centre, text: "O")
              ]
            ),
          ),
        ]
      ),
    );
  }
}

class FlickMe extends StatelessWidget {
  final Color color;
  final String text;
  const FlickMe({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 28,
        color: color,
        shadows: [
          Shadow(blurRadius: 7.0, color: color, offset: const Offset(0, 0))
        ],
      ),
      child: AnimatedTextKit(animatedTexts: [FlickerAnimatedText(text)]),
    );
  }
}
