import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/config/images.dart';
import 'package:mervoweb/function/basic.dart';
import 'package:mervoweb/widgets/text.dart';

class RightContent extends StatelessWidget {
  const RightContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 7,
      height: MediaQuery.of(context).size.height,
      color: darkBlueColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            ClipOval(
              child: Container(
                width: 120, height: 120,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle
                ),
                child: Image.asset(mervo, width: 80, fit: BoxFit.contain, filterQuality: FilterQuality.high,)
              )
            ),
            const SizedBox(height: 10),
            TextWidget(text: startStatement(), align: TextAlign.center),
            const SizedBox(height: 10),
            Container(color: whiteColor, width: 3, height: 200)
          ],
        ),
      ),
    );
  }
}