import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mervoweb/pages/screens/contact.dart';
import 'package:mervoweb/pages/screens/gallery.dart';
import 'package:mervoweb/pages/screens/home.dart';
import 'package:mervoweb/pages/screens/portfolio.dart';
import 'package:mervoweb/pages/widgets/sides/left.dart';
import 'package:mervoweb/pages/widgets/sides/right.dart';
import 'package:mervoweb/res/dimension.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveWidget.isPhone(context)
      ? Column(
          children: [
            BounceInUp(child: const HomeSection()),
            Bounce(child: const PortfolioSection()),
            BounceInDown(child: const GallerySection()),
            FadeOutDownBig(child: const ContactSection()),
          ],
        )
      : ResponsiveWidget.isTablet(context)
      ? Row(
        children: [
          const LeftContent(),
          Expanded(
            child: Column(
              children: [
                BounceInUp(child: const HomeSection()),
                Bounce(child: const PortfolioSection()),
                BounceInDown(child: const GallerySection()),
                FadeOutDownBig(child: const ContactSection()),
              ],
            ),
          ),
        ],
      )
      : Row(
        children: [
          const LeftContent(),
          Expanded(
            child: Column(
              children: [
                BounceInUp(child: const HomeSection()),
                Bounce(child: const PortfolioSection()),
                BounceInDown(child: const GallerySection()),
                FadeOutDownBig(child: const ContactSection()),
              ],
            ),
          ),
          const RightContent()
        ],
      )
    );
  }
}