import 'package:flutter/material.dart';
import 'package:mervoweb/config/images.dart';
import 'package:mervoweb/function/external.dart';
import 'package:mervoweb/model/link_list.dart';
import 'package:mervoweb/pages/widgets/sides/left.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:mervoweb/widgets/button.dart';
import 'package:mervoweb/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  final String id = "/:home";
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isDesktop(context)
      ? const EdgeInsets.only(right: 20, top: 100, bottom: 100)
      : ResponsiveWidget.isTablet(context)
      ? const EdgeInsets.only(right: 20, top: 80, bottom: 80)
      : const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: "Hi, my name is",
            size: ResponsiveWidget.isDesktop(context) ? 22 : ResponsiveWidget.isTablet(context) ? 18 : 14,
          ),
          const SizedBox(height: 10),
          TextWidget(
            text: "Evaristus Adimonyemma.",
            weight: FontWeight.bold,
            size: ResponsiveWidget.isDesktop(context) ? 60 : ResponsiveWidget.isTablet(context) ? 30 : 30,
          ),
          const SizedBox(height: 10),
          TextWidget(
            text: "I build things for web and app.",
            weight: FontWeight.bold,
            color: const Color(0xA6FFFFFF),
            size: ResponsiveWidget.isDesktop(context) ? 60 : ResponsiveWidget.isTablet(context) ? 30 : 30,
          ),
          const SizedBox(height: 40),
          const TextWidget(
            text: "I am a fullstack developer covering both the backend and the frontend development of your apps and website."
            " I am a dream-getter and very enthusiastic about designs and technology. Hoping to explore the world of AI soon.",
            size: 16,
          ),
          const SizedBox(height: 30),
          ResponsiveWidget.isPhone(context)
          ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonIconWidget(
                text: "Talk to me now", onPressed: () => launchMail(evaMailAddress), icon: Icons.mail_rounded
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SocialMedia(pressed: () => launchMail(evaMailAddress), asset: email),
                  const SizedBox(width: 10),
                  SocialMedia(pressed: () => launchUrl(linkedInLink), asset: linkedIn),
                  const SizedBox(width: 10),
                  SocialMedia(pressed: () => launchUrl(facebookLink), asset: facebook),
                  const SizedBox(width: 10),
                  SocialMedia(pressed: () => launchUrl(twitterLink), asset: twitter),
                  const SizedBox(width: 10),
                  SocialMedia(pressed: () => launchUrl(instagramLink), asset: instagram),
                  const SizedBox(width: 10),
                  SocialMedia(pressed: () => launchUrl(githubLink), asset: github),
                ],
              ),
              // const SizedBox(width: 10),
              // SocialMedia(pressed: () => makePhoneCall("09164806343"), asset: email),
            ],
          )
          : ButtonIconWidget(
            text: "Talk to me now", onPressed: () => launchMail(evaMailAddress), icon: Icons.mail_rounded
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}