import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamevaristus_website/routes/routes.dart';
import 'package:url_strategy/url_strategy.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute(),
      getPages: routes,
    );
  }
}
