import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../config/colors.dart';
import '../../model/link_list.dart';
import '../../res/dimension.dart';
import '../../widgets/text.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({Key? key}) : super(key: key);

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
            text: "Latest Project Gallery",
            size: ResponsiveWidget.isDesktop(context) ? 36 : ResponsiveWidget.isTablet(context) ? 30 : 24,
          ),
          const SizedBox(height: 50),
          TextWidget(text: "Will be updating this section soon. Don't go anywhere.", size: 16, color: tabBlueTwo,),
          Lottie.network(urlLottie)
          // ResponsiveWidget.isPhone(context) ? const PhoneProjects() : const BigProjects()
        ],
      ),
    );
  }
}