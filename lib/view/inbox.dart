import 'package:bkash_clone/const/appColor.dart';
import 'package:flutter/material.dart';

class InBox extends StatelessWidget {
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    queryData = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.brandbKash,
          title: Text('ইনবক্স'),
          actions: [
            InkWell(
                onTap: () {},
                child: Image.asset("assets/icon.png", width: width * 0.1)),
          ],
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "  নোটিফিকেশন",
            ),
            Tab(
              text: " লেনদেন সমূহ",
            )
          ]),
        ),
        body: TabBarView(children: [
          Expanded(
            child: ListView(
              children: [
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                Notification(height),
                

              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  listTile(),
                  listTile(),
                  listTile(),
                  listTile(),
                  listTile(),
                  listTile(),
                  listTile(),
                  listTile(),
                
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Padding Notification(double height) {
    return Padding(
                padding:  EdgeInsets.only(top: 10,bottom: 5),
                child: Container(
                  height: height * 0.3,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.asset(
                            "assets/recharge_offer.png",
                            fit: BoxFit.cover,
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Super Offer On Add Money",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                  "Get instant 30 Tk cashback on add money from card to\nbKash!")
                            ],
                          )),
                    ],
                  ),
                ),
              );
  }

  Padding listTile() {
    return Padding(
      padding:  EdgeInsets.only(top: 10),
      child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset("assets/profile.png"),
                    ),
                    title: Text("Send Money"),
                    subtitle: Text("Kawser Ahmed"),
                    trailing: Text("500 TK"),
                  ),
    );

  }
}
