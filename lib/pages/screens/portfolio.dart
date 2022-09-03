import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/config/images.dart';
import 'package:mervoweb/pages/widgets/portfolio/dev_children.dart';
import 'package:mervoweb/pages/widgets/portfolio/dev_tabs.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:mervoweb/widgets/tabs.dart';
import 'package:mervoweb/widgets/text.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isDesktop(context)
      ? const EdgeInsets.only(right: 20, top: 100, bottom: 100)
      : ResponsiveWidget.isTablet(context)
      ? const EdgeInsets.only(right: 20, top: 80, bottom: 80)
      : const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        children: [
          TextWidget(
            text: "Curious to Know about me?",
            size: ResponsiveWidget.isDesktop(context) ? 36 : ResponsiveWidget.isTablet(context) ? 30 : 24,
          ),
          const SizedBox(height: 50),
          ResponsiveWidget.isDesktop(context)
          ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: const [
                TextWidget(
                  text: "The thrill of codes written to execute some certain functions, resonates everytime in me."
                  " There is nothing much more fun, (except for music, and making money ... lol) than this."
                  " I grew up in Nigeria and one of the things I have hated so much was the way which made getting things done in Nigeria too difficult.",
                  size: 16,
                  align: TextAlign.justify
                ),
                SizedBox(height: 15),
                TextWidget(
                  text: " But with the advent of technology, life was just...wow. I believe there is much technology has to offer and it is really limitless."
                  " So, my journey into this wonderful world started from 2009. Still a kid though, but I had my eyes on that world."
                  " Navigating the world of technology has been a journey for me since early 2017. Many ups and downs but being focus paid. "
                  " Can't wait to work on your project for you. Let's bring those ideas of yours alive, booming and changing the world.",
                  size: 16,
                  align: TextAlign.justify
                ),
              ],
            ),
          )
          : Column(
            children: [
              Column(
                children: const [
                  TextWidget(
                    text: "The thrill of codes written to execute some certain functions, resonates everytime in me."
                    " There is nothing much more fun, (except for music, and making money ... lol) than this."
                    " I grew up in Nigeria and one of the things I have hated so much was the way which made getting things done in Nigeria too difficult.",
                    size: 16,
                    align: TextAlign.justify
                  ),
                  SizedBox(height: 15),
                  TextWidget(
                    text: " But with the advent of technology, life was just...wow. I believe there is much technology has to offer and it is really limitless."
                    " So, my journey into this wonderful world started from 2009. Still a kid though, but I had my eyes on that world."
                    " Navigating the world of technology has been a journey for me since early 2017. Many ups and downs but being focus paid. "
                    " Can't wait to work on your project for you. Let's bring those ideas of yours alive, booming and changing the world.",
                    size: 16,
                    align: TextAlign.justify,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ClipOval(
                child: Container(
                  width: 250, height: 250,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(mervo, width: 250, fit: BoxFit.contain, filterQuality: FilterQuality.high,)
                )
              ),
            ],
          ),
          const SizedBox(height: 120),
          const TextWidget(text: "Programming Life", size: 18),
          const SizedBox(height: 50),
          AnimatedHorizontalTab(
            height: ResponsiveWidget.isDesktop(context) ? 500
            : ResponsiveWidget.isTablet(context) ? 400
            : 300,
            stringtabs: false, tabs: devtab(context),
            children: const[DevLanguages(), DevFrameWorks(), DevAreas()]
          ),
          const SizedBox(height: 120),
          const TextWidget(text: "Life Background", size: 18),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

