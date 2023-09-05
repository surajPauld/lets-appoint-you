// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp/phone_number_verify/MyPhone.dart';

// import '../pages/home_page.dart';

class IntroductionPage extends StatelessWidget {
  final Function() onDone;

  const IntroductionPage({super.key, required this.onDone, required Text done});

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Page 1",
        image: const Center(
          child: Icon(Icons.waving_hand, size: 50.0),
        ),
        bodyWidget: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              // Navigator.push(
              //   context as BuildContext,
              //   MaterialPageRoute(builder: (context) => const MyPhone()),
              // );
            },
            child: const Text(
              'Next',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      PageViewModel(
        title: "Page 2",
        body: "----Description----",
        image: const Center(
          child: Icon(Icons.waving_hand, size: 50.0),
        ),
      ),
      PageViewModel(
        title: "Page 3",
        body: "----Description----",
        image: const Center(
          child: Icon(Icons.waving_hand, size: 50.0),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // image: const Center(
        //   child: Icon(Icons.waving_hand, size: 50.0),
        // ),
        body: Column(
          children: [
            Card(
              child: Container(
                child: const Text("Welcome"),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyPhone()),
                  );
                },
                child: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
          ],
        ),

        // body: IntroductionScreen(
        //   pages: getPages(),
        //   showNextButton: false,
        //   showSkipButton: true,
        //   skip: const Text("Skip"),
        //   next: const Text("Next"),
        //   done: const Text("Done"),
        //   globalBackgroundColor: Colors.white,
        //   onDone: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const HomePage(),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
