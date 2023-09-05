import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/introduction_page/introduction_page.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/phone_number_verify/MyPhone.dart';
import 'package:myapp/phone_number_verify/verify.dart';

import 'pages/main_home_pages/main_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => const MyPhone(),
        'verify': (context) => const MyVerify(),
        'home': (context) => const HomePage(),
        'navigation': (context) => const Home(),
        'main_home_page': (context) => const MainHomePage(),
      },
      home: Scaffold(
        body: IntroductionPage(
          onDone: () {},
          done: const Text("Done"),
        ),
      ),
    );
  }
}
