import 'package:flutter/material.dart';
// import 'package:doctor_app/data/json.dart';
// import 'package:doctor_app/widgets/popular_doctor.dart';
// import 'package:doctor_app/widgets/textbox.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:myapp/pages/theme/colors.dart';
import 'package:myapp/pages/widgets/textbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Flutter Map'),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Card(
    //           child: Container(
    //             padding: const EdgeInsets.all(8.0),
    //             width: double.infinity,
    //             child: Image.asset('images/rocket.png'),
    //           ),
    //         ),
    //         Row(
    //           children: [
    //             Expanded(
    //               child: Card(
    //                 child: Container(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Image.asset('images/space.png'),
    //                 ),
    //               ),
    //             ),
    //             Expanded(
    //               child: Card(
    //                 child: Container(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Image.asset('images/travel.png'),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         Card(
    //           child: Container(
    //             padding: const EdgeInsets.all(8.0),
    //             width: double.infinity,
    //             child: Image.asset('images/yeah.png'),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: getBody(),
    );
  }
}

getBody() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: const Text(
            "Hi,",
            style: TextStyle(
                fontSize: 23, color: primary, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            child: const Text(
          "Let's Find Your Doctor",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        )),
        const SizedBox(
          height: 15,
        ),
        const CustomTextBox(),
        const SizedBox(
          height: 25,
        ),
        Container(
            child: const Text(
          "Categories",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )),
        const SizedBox(height: 10),
        
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/electronic-health-record-concept-vector-id1299616187?k=20&m=1299616187&s=612x612&w=0&h=gmUf6TXc8w6NynKB_4p2TzL5PVIztg9UK6TOoY5ckMM="),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 25,
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    ),
  );
}
