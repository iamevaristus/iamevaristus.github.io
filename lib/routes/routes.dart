import 'package:get/route_manager.dart';

import '../pages/layout/layout_checker.dart';
import '../pages/splash.dart';

String splash = '/';
String layout = "/home";
String home = "/mervo/:home";
String contact = '/mervo/:contact';
String portfolio = '/mervo/:portfolio';
String gallery = '/mervo/:gallery';

String splashRoute() => splash;
String layoutRoute() => layout;
String homeRoute() => home;
String contactRoute() => contact;
String portfolioRoute() => portfolio;
String galleryRoute() => gallery;

List<GetPage> routes = [
  GetPage(name: splash, page: () => const SplashPage()),
  GetPage(name: layout, page: () => const LayoutChecker()),
  //GetPage(name: home, page: () => const HomeSection()),
  // GetPage(name: contact, page: () => const ContactSection()),
  // GetPage(name: portfolio, page: () => const PortfolioSection()),
  // GetPage(name: gallery, page: () => const GallerySection())
];