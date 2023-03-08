import 'package:flutter/material.dart';


class Service extends StatelessWidget {
  String serviceName;
  String image;
  final VoidCallback onClick;
  Service(this.serviceName,this.image,this.onClick);
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    queryData = MediaQuery.of(context);
    return
     InkWell(
       onTap:onClick,
       child: SizedBox(
          child: Column(
            children: [
              Image.asset(image,width: width*0.2,height: height/12,),
              Text(serviceName,style: TextStyle(fontSize:queryData.size.width * 0.03),)
            ],
          ),

    ),
     );
  }
}


