import 'package:bkash_clone/view/bottomNav.dart';
import 'package:bkash_clone/view/signUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../const/appColor.dart';
import '../controller/auth.dart';

class LogIn extends StatelessWidget {
  TextEditingController _accountNo = TextEditingController();

  TextEditingController _pinNo = TextEditingController();

  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor.brandbKash,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColor.brandbKash,
                                width: 0.5,
                                style: BorderStyle.solid)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 10),
                          child: Center(
                              child: Text(
                            "English",
                            style: TextStyle(
                                color: AppColor.brandbKash,
                                fontSize: queryData.size.width * 0.04),
                          )),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.1,
                  right: screenWidth * 0.05,
                  left: screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/bKash-logo.png',
                    scale: 10,
                  ),
                  Image.asset('assets/qr-code.png')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  right: screenWidth * 0.05,
                  left: screenWidth * 0.05),
              child: Text(
                "আপনার বিকাশ একাউন্টে\nলগইন করুন",
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: queryData.size.width * 0.07,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  right: screenWidth * 0.05,
                  left: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("একাউন্ট নাম্বার"),
                  TextField(
                    controller: _accountNo,
                    decoration: InputDecoration(
                        //hintText: "বিকাশ একাউন্ট নাম্বার দিন",
                        hintText: "ইমেইল একাউন্ট দিন",
                        hintStyle: TextStyle(color: AppColor.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColor.grey),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("বিকাশ পিন"),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "পিন ভুলে গেছেন?",
                          style: TextStyle(color: AppColor.brandbKash),
                        ),
                      )
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    controller: _pinNo,
                    decoration: InputDecoration(
                        hintText: "বিকাশ পিন নাম্বার দিন",
                        hintStyle: TextStyle(color: AppColor.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColor.grey),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.04,
                  right: screenWidth * 0.05,
                  left: screenWidth * 0.05),
              child: InkWell(
                  onTap: ()=>Aouth().signIn(_accountNo.text, _pinNo.text, context),
                  child: Container(
                      height: screenHeight * 0.06,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.brandbKash),
                      child: Center(
                          child: Text(
                        "পরবর্তী",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: queryData.size.width * 0.05),
                      )))),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: "কোনো অ্যাকাউন্ট নেই? ",
                  style: TextStyle(
                      fontSize: queryData.size.width*0.04,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                  children: [
                    TextSpan(
                      text: 'নিবন্ধন করুন',
                      style: TextStyle(
                          fontSize:  queryData.size.width*0.05,
                          color: AppColor.brandbKash,
                          fontWeight: FontWeight.w600),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
