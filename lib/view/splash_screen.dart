import 'package:bkash_clone/const/appColor.dart';
import 'package:bkash_clone/view/auth_screen.dart';
import 'package:bkash_clone/view/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

 final box=GetStorage();

Future chooseScreen()async{
  var userId=box.read('uid');
  if (userId==null) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Auth_Screen()));
  }else{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavController()));
  }
}

@override
  void initState() {
     Future.delayed(Duration(seconds: 6), () => chooseScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.brandbKash,
      body: Center(
      child: Image.asset("assets/loading.gif"),
      ),
    );
  }
}