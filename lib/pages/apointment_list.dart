import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/book_appointment.dart';

class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  @override
  Widget build(BuildContext context) {
    getValue(String month) {
      if (month == '1') {
        return 'January';
      } else if (month == '2') {
        return 'February';
      } else if (month == '3') {
        return 'March';
      } else if (month == '4') {
        return 'April';
      } else if (month == '5') {
        return 'May';
      } else if (month == '6') {
        return 'June';
      } else if (month == '7') {
        return 'July';
      } else if (month == '8') {
        return 'August';
      } else if (month == '9') {
        return 'September';
      } else if (month == '10') {
        return 'October';
      } else if (month == '11') {
        return 'November';
      } else if (month == '12') {
        return 'December';
      }
    }

    getTime(String time) {
      if (time == '9' || time == '10' || time == '11') {
        return '${time}AM';
      } else {
        return '${time}PM';
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appointments",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Users')
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .collection('Appointment')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((document) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.amber[200],
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 7.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const Text("Appointment: \n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20)),
                              const Divider(
                                  height: 0, thickness: 2, color: Colors.black),
                              Padding(
                                padding: const EdgeInsets.only(top: 23.0),
                                child: Text(
                                    "Date: ${document.id} ${getValue((document.data() as Map<String, dynamic>)['Month'].toString())} ${(document.data() as Map<String, dynamic>)['Year'].toString()}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 23.0),
                                child: Text(
                                    "Time: ${getTime((document.data() as Map<String, dynamic>)['Time'].toString())}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookingCalendarDemoApp(),
              ),
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
