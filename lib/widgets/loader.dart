import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mervoweb/config/colors.dart';

class LoaderFour extends StatelessWidget {
  const LoaderFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 3,
      child: LinearProgressIndicator(
        backgroundColor: mainColor,
        color: whiteColor
      )
    );
  }
}

class CircleWhiteLoader extends StatelessWidget {
  final double size;
  const CircleWhiteLoader({Key? key, this.size = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.inkDrop(
        color: whiteColor,
        size: size
      ),
    );
  }
}

class WhiteLoader extends StatelessWidget {
  final double size;
  const WhiteLoader({Key? key, this.size = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.beat(
        color: whiteColor,
        size: size
      ),
    );
  }
}