import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/images.dart';
import '../../function/external.dart';
import '../../model/link_list.dart';
import '../../res/dimension.dart';
import '../../widgets/button.dart';
import 'layouts.dart';

class LayoutChecker extends StatefulWidget {
  const LayoutChecker({Key? key}) : super(key: key);

  @override
  State<LayoutChecker> createState() => _LayoutCheckerState();
}

class _LayoutCheckerState extends State<LayoutChecker> {
  download() => downloadResume(fileName: myFile, url: downloadAddress);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: ResponsiveWidget.isPhone(context)
      ? AppBar(
        backgroundColor: darkBlueColor,
        leading: const Logo(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: BlueButtonWidget(
              onPressed: () => download(),
              onHover: (val){
                if(val) return const ElasticInOutCurve();
              },
              text: "Get My Resume", width: 120
            ),
          ),
          // const SizedBox(width: 10),
          // Icon(Icons.access_time_outlined, size: 30, color: whiteColor,),
          const SizedBox(width: 10,)
        ],
        elevation: 0,
      )
      : ResponsiveWidget.isTablet(context)
      ? AppBar(
        backgroundColor: darkBlueColor,
        leading: const Logo(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: BlueButtonWidget(onPressed: () => download(), text: "Get My Resume", width: 120),
          ),
          // const SizedBox(width: 10),
          // TextButttonWidget(onPressed: () => toHome(context), text: "Home"),
          // TextButttonWidget(onPressed: () => toPortfolio(context), text: "Portfolio"),
          // TextButttonWidget(onPressed: () => toGallery(context), text: "Gallery"),
          // TextButttonWidget(onPressed: () => toContact(context), text: "Contact"),
          const SizedBox(width: 20)
        ],
        elevation: 0,
      )
      : AppBar(
        backgroundColor: darkBlueColor,
        leading: const Logo(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: BlueButtonWidget(onPressed: () => download(), text: "Get My Resume", width: 120),
          ),
          // const SizedBox(width: 30),
          // TextButttonWidget(onPressed: () => toHome(context), text: "Home"),
          // TextButttonWidget(onPressed: () => toPortfolio(context), text: "Portfolio"),
          // TextButttonWidget(onPressed: () => toGallery(context), text: "Gallery"),
          // TextButttonWidget(onPressed: () => toContact(context), text: "Contact"),
          const SizedBox(width: 20)
        ],
        elevation: 0,
      ),
      body: const ResponsiveWidget(
        desktop: DesktopDevice(),
        phone: PhoneDevice(),
        tablet: TabletDevice(),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(myLogo),//Image.asset(merVo),
    );
  }
}