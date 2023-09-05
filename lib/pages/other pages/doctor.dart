import 'package:flutter/material.dart';

class DoctorsAppointmentBooking extends StatefulWidget {
  const DoctorsAppointmentBooking({super.key});

  @override
  State<DoctorsAppointmentBooking> createState() => _DoctorsAppointmentBookingState();
}

class _DoctorsAppointmentBookingState extends State<DoctorsAppointmentBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctors Appointment Booking"),
      ),
      body: Text("Book your Favorite Doctor's appointment!"),
    );
  }
}