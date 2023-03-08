import 'package:bkash_clone/const/appColor.dart';
import 'package:bkash_clone/view/bottomNav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class Aouth {
  final box = GetStorage();

  Future signUp(String email, String password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      var authCredential = userCredential.user;

      if (authCredential!.uid.isNotEmpty) {
        box.write('uid', authCredential.uid);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNavController()));
        Fluttertoast.showToast(msg: 'Ragistration Successfull');
      } else {
        Fluttertoast.showToast(
            msg: "Sign Up Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.brandbKash,
            textColor: AppColor.white,
            fontSize: 16.0);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(
            msg: "weak-password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.black,
            textColor: AppColor.white,
            fontSize: 16.0);
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "email-already-in-use",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.black,
            textColor: AppColor.white,
            fontSize: 16.0);
      }
    }
  }

  Future signIn(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      var authCredential = userCredential.user;
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNavController()));
      } else {
        Fluttertoast.showToast(
            msg: "Sign Up Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.black,
            textColor: AppColor.white,
            fontSize: 16.0);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(
            msg: "weak-password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.black,
            textColor: AppColor.white,
            fontSize: 16.0);
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "email-already-in-use",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: AppColor.black,
            textColor: AppColor.white,
            fontSize: 16.0);
      }
    }
  }

  Future signOut() async {
    try {
      var _auth;
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
