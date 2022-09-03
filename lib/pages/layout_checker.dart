import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/pages/screens/contact.dart';
import 'package:mervoweb/pages/screens/gallery.dart';
import 'package:mervoweb/pages/screens/home.dart';
import 'package:mervoweb/pages/screens/portfolio.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:mervoweb/layout/desktop.dart';
import 'package:mervoweb/layout/phone.dart';
import 'package:mervoweb/layout/tablet.dart';
import 'package:mervoweb/widgets/button.dart';
import 'package:mervoweb/widgets/text.dart';

class LayoutChecker extends StatefulWidget {
  const LayoutChecker({Key? key}) : super(key: key);

  @override
  State<LayoutChecker> createState() => _LayoutCheckerState();
}

class _LayoutCheckerState extends State<LayoutChecker> {
  String resumeLink = 'resume.docx';
  late String downloadUrl;
  Future downloadResume() async {
    final ref = FirebaseStorage.instance.ref("gs://my-website-98cb8.appspot.com/").child(resumeLink);
    String downloadAddress = await ref.getDownloadURL();
    setState(() {
      downloadUrl = downloadAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: ResponsiveWidget.isPhone(context)
      ? AppBar(
        backgroundColor: darkBlueColor,
        leading: Icon(Icons.access_time_outlined, size: 30, color: whiteColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BlueButtonWidget(onPressed: () => downloadResume(), text: "Get My Resume", width: 120, height: 20,),
          ),
          const SizedBox(width: 30),
          Icon(Icons.access_time_outlined, size: 30, color: whiteColor,),
          const SizedBox(width: 10,)
        ],
        elevation: 0,
      )
      : AppBar(
        backgroundColor: darkBlueColor,
        leading: Icon(Icons.access_time_outlined, size: 30, color: whiteColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BlueButtonWidget(onPressed: () => downloadResume(), text: "Get My Resume", width: 120, height: 20,),
          ),
          const SizedBox(width: 30),
          TextButttonWidget(onPressed: () => Get.to(() => const HomeSection()), text: "Home"),
          TextButttonWidget(onPressed: () => Get.to(() => const PortfolioSection()), text: "Portfolio"),
          TextButttonWidget(onPressed: () => Get.to(() => const GallerySection()), text: "Gallery"),
          TextButttonWidget(onPressed: () => Get.to(() => const ContactSection()), text: "Contact"),
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