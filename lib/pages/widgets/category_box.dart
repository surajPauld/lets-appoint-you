import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/other%20pages/doctor.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({Key? key, required this.title, required this.icon, this.color})
      : super(key: key);
  IconData icon;
  Color? color;
  String title;

  List categoryNavigations = [const HomePage()];  


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),

        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            NavigationBar(destinations: const [HomePage(), DoctorsAppointmentBooking()]),
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(color: color),
            )
          ],
        ));
  }
}
