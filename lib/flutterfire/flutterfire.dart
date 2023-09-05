import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// String id, String amount

Future<bool> addAppointment(
    String day, String month, String year, String time) async {
  try {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    var value1 = int.parse(time);
    var value2 = int.parse(month);
    var value3 = year;
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .collection('Appointment')
        .doc(day);
    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(documentReference);
      if (!snapshot.exists) {
        documentReference
            .set({'Time': value1, 'Month': value2, 'Year': value3});
        return true;
      }
      // int newAmount = snapshot.data()['Time'] + value;
      // transaction.update(documentReference, {'Time': newAmount});
      // return true;
    });
    return true;
  } catch (e) {
    return false;
  }
}
