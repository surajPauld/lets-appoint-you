import 'package:flutter/material.dart';
import 'package:myapp/pages/theme/colors.dart';
import 'package:myapp/pages/widgets/category_box.dart';
import 'package:myapp/pages/widgets/textbox.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
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
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 5),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryBox(
                title: "Barber",
                icon: Icons.favorite,
                color: Colors.red,
              ),
              CategoryBox(
                title: "Doctor",
                icon: Icons.local_hospital,
                color: Colors.blue,
              ),
              CategoryBox(
                title: "Plumber",
                icon: Icons.details_rounded,
                color: Colors.purple,
              ),
              CategoryBox(
                title: "Nails and Salons",
                icon: Icons.healing_outlined,
                color: Colors.green,
              ),
            ],
          ),
        ),
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
