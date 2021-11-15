import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/widgets.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({ Key? key }) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  List<IconData> mybellicon=[Icons.notifications,Icons.notifications];
  List<String> title=['My Account','Pramotional Notifications'];
  List<String> decription=['You will receive daily updates','You will receive daily updates'];
  // bool isSwitched = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xff69A03A),

            child: Container(
              margin: EdgeInsets.only(top: 60, left: 15),
              child: Row(
                children: [
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,),
                Text("      Notification Settings", 
                style: TextStyle(color: Colors.white, fontSize: 15,  fontFamily: 'Montserrat',)
                )
              ],
              ),
            ),
          ),
        Container(
          height: 200,
          child:ListView.separated( 
            physics: BouncingScrollPhysics(),
           itemCount: mybellicon.length,
           
           separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade400,
        indent: 10,
        endIndent: 10,
      ),
           //scrollDirection: Axis.horizontal,
          itemBuilder: (ctx,index) => myNotifyset(index),
          ),
          ),
        ],
      )
    );

  
  }

  Row myNotifyset(int index) {
    return Row(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Icon(mybellicon[index], size: 35,)),
      Container(
        margin: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title[index], 
            style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 12),
            ),
            Text(decription[index]),
          ],),),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Transform.scale(
    scale: 0.7,
    child: CustomSwitch(
          activeColor: Color(0xff69A03A),
          value: status,
          onChanged: (value) {
            setState(() {
              status = value;
            });
          },
      ),
          ),
        ),
    ],
        );
  }
}