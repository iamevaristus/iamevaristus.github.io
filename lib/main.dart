import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mervoweb/pages/splash.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB0eZuGNogL9HDUxBKc-j8imCuLQzI-Jao",
      appId: "1:212417884237:web:fbc46278c75b394fd12c04",
      messagingSenderId: "212417884237",
      projectId: "my-website-98cb8",
      storageBucket: "my-website-98cb8.appspot.com",
      measurementId: "G-HQ0JFGFQ4J",
      authDomain: "my-website-98cb8.firebaseapp.com",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes:  {
        "/" :(context) => const SplashPage(),
      },
    );
  }
}
