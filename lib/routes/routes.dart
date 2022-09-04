import 'package:get/route_manager.dart';
import 'package:mervoweb/pages/splash.dart';

String splash = '/';
String home = "/:home";
String contact = '/:contact';
String portfolio = '/:portfolio';
String gallery = '/:gallery';


String splashRoute() => splash;
String homeRoute() => home;
String contactRoute() => contact;
String portfolioRoute() => portfolio;
String galleryRoute() => gallery;

List<GetPage> routes = [
  GetPage(name: splash, page: () => const SplashPage()),
  // GetPage(name: home, page: () => const HomeSection()),
  // GetPage(name: contact, page: () => const ContactSection()),
  // GetPage(name: portfolio, page: () => const PortfolioSection()),
  // GetPage(name: gallery, page: () => const GallerySection())
];