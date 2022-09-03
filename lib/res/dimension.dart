import 'package:flutter/material.dart';

const int desktopDevice = 1200;
const int tabletDevice = 768;
const int phoneDevice = 360;

// class Responsive {
//   static bool isPhone(BuildContext context) =>
//     MediaQuery.of(context).size.width < phoneDevice;

//   static bool isTablet(BuildContext context) =>
//     MediaQuery.of(context).size.width >= tabletDevice &&
//     MediaQuery.of(context).size.width < desktopDevice;

//   static bool isDesktop(BuildContext context) =>
//     MediaQuery.of(context).size.width > desktopDevice;
// }

class ResponsiveWidget extends StatelessWidget{
  final Widget desktop;
  final Widget tablet;
  final Widget phone;

  const ResponsiveWidget({
    Key? key,
    required this.desktop,
    required this.phone,
    required this.tablet
  }) : super(key: key);

  static bool isPhone(BuildContext context) =>
    MediaQuery.of(context).size.width < phoneDevice ||
    MediaQuery.of(context).size.width == phoneDevice;

  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width > phoneDevice &&
    MediaQuery.of(context).size.width < desktopDevice;

  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width > desktopDevice &&
    MediaQuery.of(context).size.width >= desktopDevice;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        double width = constraints.maxWidth;
        if(width >= desktopDevice){
          return desktop;
        } else if(width < desktopDevice && width >= phoneDevice){
          return tablet;
        }else {
          return phone;
        }
      },
    );
  }
}
