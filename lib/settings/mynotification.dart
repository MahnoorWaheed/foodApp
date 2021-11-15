import 'package:flutter/material.dart';
import 'package:fruit_market/settings/notificationsetting.dart';


class MyNotification extends StatefulWidget {
  const MyNotification({ Key? key }) : super(key: key);

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {

  List<String> todayimage=['assets/images/brinjals.jpg','assets/images/broccoli.jpg',
  'assets/images/carrot.jpg',];
  List<String> yesterimage=['assets/images/cashew.jpg','assets/images/corriander.jpg',
  'assets/images/garlic.jpg',];
  List<String> title=['Buy 1kg and get 200 grams free','Get 20 % Discount',
  'Get 20 % Extra',];
List<String> Description=['Buy 1 Get 1 Free for small sizes\nUntil Feb 27,2021 .       ',
'Get 20% discount offer on buying\nPeaches today.',
  'Get 20% discount offer on buying\nPeaches today.',];
  List<String> time=['Few minutes ago','30 minutes ago','1 Hour ago'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottNav(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
            height: 140,
            color: Color(0xff69A03A),
            child: Row(
              children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
                child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,)),
              Container(
                margin: EdgeInsets.only(top: 75),
                child: Text("      Notification", 
                style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white,  fontFamily: 'Montserrat',)),
              ),
              Container(
                margin: EdgeInsets.only(top: 75, left: 180),
                child: 
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationSetting()));
                },
                child: Icon(Icons.settings, color: Colors.white, )),)
            ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left:10),
            child: Text("Today",
             style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18,  fontFamily: 'Montserrat',),),
          ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: todayimage.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index)=>notificationRow(index)),
          ),
          Container(
            margin: EdgeInsets.only( left:10),
            child: Text("Yesterday",
             style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18,  fontFamily: 'Montserrat',),),
          ),
          Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: todayimage.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index)=>yesternotifcationRow(index)),
          ),
      ],
      ),
    );
  }
  Container notificationRow(int index){
 return Container(
   margin: EdgeInsets.only(left: 10),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
     Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
              image: AssetImage(yesterimage[index]),
              fit: BoxFit.fill,
              ),),
            ),
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(title[index], 
               style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 10)
               ),
          Text(Description[index], 
              style: TextStyle(color: Colors.grey, fontSize: 10,  fontFamily: 'Montserrat',)
              ),
          Text(time[index], 
            style: TextStyle(color: Colors.grey, fontSize: 10, fontFamily: 'Montserrat',)),
       ],
     ),
     Icon(Icons.more_vert),
   ],
   ),
 );
  }

Container yesternotifcationRow(int index){
 return Container(
   margin: EdgeInsets.only(left: 10),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
     Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
              image: AssetImage(todayimage[index]),
              fit: BoxFit.fill,
              ),),
            ),
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(title[index], 
               style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 10)
               ),
          Text(Description[index], 
              style: TextStyle(color: Colors.grey, fontSize: 10,  fontFamily: 'Montserrat',)
              ),
          Text(time[index], 
            style: TextStyle(color: Colors.grey, fontSize: 10, fontFamily: 'Montserrat',)),
       ],
     ),
     Icon(Icons.more_vert),
   ],
   ),
 );
  }

  // Row yesternotifcationRow(int index) {
  //   return Row(
  //       children: [
  //       Container(
  //         margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //         width: 100,
  //         height: 100,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10),
  //           image: DecorationImage(
  //           image: AssetImage(todayimage[index]),
  //           fit: BoxFit.fill,
  //           ),),
  //         ),
  //       Container(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Container(
  //             margin: EdgeInsets.symmetric(vertical: 10),
  //             child: Text(title[index], 
  //             style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 10)),
  //           ),
  //           Text(Description[index], 
  //           style: TextStyle(color: Colors.grey, fontSize: 10,  fontFamily: 'Montserrat',)
  //           ),
  //         Container(
  //           margin: EdgeInsets.symmetric(vertical: 10),
  //           child: Text(time[index], style: TextStyle(color: Colors.grey, fontSize: 12,  fontFamily: 'Montserrat',)))
  //       ],)),
  //       Container(
  //           margin: EdgeInsets.symmetric(horizontal: 7),
  //         child: Icon(Icons.more_vert),),
  //     ],
  //     );
 // }
}