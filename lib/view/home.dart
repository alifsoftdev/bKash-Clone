import 'package:bkash_clone/const/appColor.dart';
import 'package:bkash_clone/widgets/service_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  late MediaQueryData queryData;


  List benner=[
    'assets/banner_two.png',
    'assets/banner_one.png',
    'assets/banner_three.png',
    'assets/banner.jpg',
  ];
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFF0F4F6),
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(height / 9.5),

      child: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
               )),
        backgroundColor: AppColor.brandbKash,
        leading: Padding(
          padding: EdgeInsets.only(top: height * 0.01, left: width * 0.01),
          child: CircleAvatar(
            child: Image.asset("assets/profile.png"),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Presous Person"),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height / 30,
              width: width * 0.4,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15)),
            )
          ],
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/rewards.png",
                width: width * 0.1,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Image.asset("assets/icon.png", width: width * 0.1)),
          ),
        ],
      ),
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
        Container(

          width:double.maxFinite,

          child: Padding(
            padding: EdgeInsets.only(
                top: height * 0.02,
                right: width * 0.03,
                left: width * 0.03),
            child: Wrap(
              runAlignment: WrapAlignment.spaceAround,
              spacing:width*0.04,
              runSpacing: height*0.02,
              children: [
                Service("Send Money", "assets/send_money.jpg",(){}),
                Service("Cash Out", "assets/cash_out.jpg",(){}),
                Service("Top Up", "assets/mobile_recharge.jpg",(){}),
                Service("Payment", "assets/make_payment.jpg",(){}),
                Service("Add Money", "assets/add_money.jpg",(){}),
                Service("Pay Bill", "assets/pay_bill.jpg",(){}),
                Service("Ticket's", "assets/tickets.jpg",(){}),
                Service("More", "assets/more.jpg",(){}),
              ],
            ),
          ),
        ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.02,
                right: width * 0.04,
                left: width * 0.04),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        bottom: height * 0.01,
                        right: width * 0.03,
                        left: width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("আমার বিকাশ "),
                      Text("সব দেখুন",style: TextStyle(color: AppColor.brandbKash),)
                    ],),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  height:  height/8,
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        bottom: height * 0.01,
                        right: width * 0.03,
                        ),
                    child: ListView(
                      padding: EdgeInsets.only(right: width * 0.03,
                          left: width * 0.03),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Service("Sopno", "assets/make_payment.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Internet", "assets/pay_bill.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Card", "assets/add_money.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("My Offer", "assets/gift.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Send Money", "assets/send_money.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Save Bill", "assets/pay_bill.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Donetion", "assets/donation.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Send Money", "assets/send_money.jpg",(){}),
                        SizedBox(width: 12,),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CarouselSlider(
                    items: benner
                        .map((items) => Padding(
                      padding:
                      EdgeInsets.only(left: 3, right: 3, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(items),
                                fit: BoxFit.fill)),
                      ),
                    ))
                        .toList(),
                    options: CarouselOptions(
                        height: 150,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.9,
                        onPageChanged: (val, carouselPageChangedReason) {
                          setState(() {
                            _currentIndex;
                          });
                        })),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        bottom: height * 0.01,
                        right: width * 0.03,
                        left: width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("সাজেশন"),
                        Text("সব দেখুন",style: TextStyle(color: AppColor.brandbKash),)
                      ],),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  height:  height/8,
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                      bottom: height * 0.01,
                      right: width * 0.03,
                    ),
                    child: ListView(
                      padding: EdgeInsets.only(right: width * 0.03,
                          left: width * 0.03),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Service("Akash", "assets/akash.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("BTCL", "assets/btcl.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Daraz", "assets/daraz.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("MetLife", "assets/metlife.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Ajker Deal", "assets/ajkerdeal.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("BD Jobs", "assets/bdjobs.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Desco", "assets/desco.jpg",(){}),
                        SizedBox(width: 12,),
                        Service("Stiline", "assets/stiline.jpg",(){}),
                        SizedBox(width: 12,),

                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        bottom: height * 0.01,
                        right: width * 0.03,
                        left: width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("অফার"),
                        Text("সব দেখুন",style: TextStyle(color: AppColor.brandbKash),)
                      ],),
                  ),
                ),
                SizedBox(height: 5,),
                SizedBox(
                  height:  height/6,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text("১০০ টাকা ক্যাশব্যাক"),
                                  Text("ওমেন্স ডে ")
                                ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("১০০ টাকা ক্যাশব্যাক"),
                                    Text("ওমেন্স ডে ")
                                  ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("১০০ টাকা ক্যাশব্যাক"),
                                    Text("ওমেন্স ডে ")
                                  ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("১০০ টাকা ক্যাশব্যাক"),
                                    Text("ওমেন্স ডে ")
                                  ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("১০০ টাকা ক্যাশব্যাক"),
                                    Text("ওমেন্স ডে ")
                                  ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height:  height/5,
                        width:width/3,
                        child: Column(
                          children: [
                            Expanded(
                                flex:2,
                                child: Image.asset("assets/cashback_offer.jpg")),
                            Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("১০০ টাকা ক্যাশব্যাক"),
                                    Text("ওমেন্স ডে ")
                                  ],)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey,width: 0.5,style: BorderStyle.solid)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        bottom: height * 0.01,
                        right: width * 0.03,
                        left: width * 0.03),
                    child: Text("অন্যান্য সেবা সমূহ"),

                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(

                  width:double.maxFinite,
                    child: Wrap(
                      runAlignment: WrapAlignment.spaceAround,
                      spacing:width*0.04,
                      runSpacing: height*0.02,
                      children: [
                        Service("Shopping", "assets/make_payment.jpg",(){}),
                        Service("Wedding", "assets/wedding.jpg",(){}),
                        Service("Top Up", "assets/mobile_recharge.jpg",(){}),
                        Service("Priyo", "assets/priyo.jpg",(){}),
                        Service("Add Money", "assets/add_money.jpg",(){}),
                        Service("Pay Bill", "assets/pay_bill.jpg",(){}),
                        Service("Ticket's", "assets/tickets.jpg",(){}),

                      ],

                  ),
                ),
              ],
            ),
          ),
      ],),
    ),
    );
  }
}
