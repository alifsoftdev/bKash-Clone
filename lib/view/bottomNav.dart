import 'package:bkash_clone/const/appColor.dart';
import 'package:bkash_clone/view/home.dart';
import 'package:bkash_clone/view/inbox.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [Home_Screen(), InBox()];
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    queryData = MediaQuery.of(context);
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.brandbKash,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.white,
        selectedLabelStyle: TextStyle(
            fontSize: queryData.size.width * 0.04,
            color: AppColor.white,
            fontWeight: FontWeight.w400),
        elevation: 10,
        unselectedItemColor: AppColor.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: queryData.size.width * 0.07,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: queryData.size.width * 0.07,
            ),
            label: "Inbox",
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.white,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset("assets/qr-code.png"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_currentIndex],
    );
  }
}
