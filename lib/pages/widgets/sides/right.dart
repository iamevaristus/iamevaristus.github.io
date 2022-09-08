import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/images.dart';
import '../../../function/basic.dart';
import '../../../widgets/text.dart';

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
                  color: green,
                  shape: BoxShape.circle
                ),
                child: Image.asset(mervo, width: 80, fit: BoxFit.contain, filterQuality: FilterQuality.high,)
              )
            ),
            const SizedBox(height: 10),
            TextWidget(text: startStatement(), align: TextAlign.center, color: green),
            const SizedBox(height: 10),
            Container(color: green, width: 3, height: 200)
          ],
        ),
      ),
    );
  }
}