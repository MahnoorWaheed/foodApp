import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/bottomnavbar/bottomscreens/bottnavbar.dart';


class MyOrders extends StatefulWidget {
  const MyOrders({ Key? key }) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<String> name=['Broccoli','Onion    ', "Anjeer   "];
  List<String> description=['Rate this Product','Rate this Product','Rate this Product'];
  List<String> date=['Delivered on 24 Feb 2021','Delivered on 24 Feb 2021', 'Delivered on 24 Feb 2021'];
  List<String> images=['assets/images/broccoli.jpg','assets/images/onion.jpg','assets/images/injeer.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 130,
          color: Color(0xff69A03A),
          child: Container(
            margin: EdgeInsets.only(top: 85, left: 10),
            child: Row(

              children: [
              InkWell(
                onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>MyOrders()));
                    },
                child: Icon(Icons.arrow_back_ios_new, size: 15,color:Colors.white)),
              Text("      My Orders", 
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontFamily: 'Montserrat',),
              ),
            ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
             itemCount: name.length,
           scrollDirection: Axis.vertical,
           itemBuilder: (ctx,index) => MyOrderRows(index),
            ),
        )
      ],),
    );
  }

  Row MyOrderRows(int index) {
    return Row(
        children: [
         Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical:10),
             height:100 ,
           width: 100,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           image: DecorationImage(
             image: AssetImage(images[index]),fit: BoxFit.cover,),
           ),
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           
           children: [
           Row(
             children: [
             Container(
               margin: EdgeInsets.only(top: 10,),
               child: Text(name[index], style: TextStyle(fontWeight: FontWeight.w900,
                fontFamily: 'Montserrat',))),
             Container(
               margin:EdgeInsets.only(left: 150),
             child: Icon(Icons.arrow_forward_ios, size: 15,)),
           ],),
           Container(
             margin: EdgeInsets.symmetric( vertical: 10),
             child: RatingBar.builder(
               
          itemSize: 15,
               itemCount: 5,
         itemBuilder: (ctx,i)=>Icon(Icons.star, color: Colors.yellow , ), 
         onRatingUpdate: (onrating){}),
           ),
         Text(description[index], style: TextStyle(color: Colors.grey, fontFamily: 'Montserrat',fontSize: 12),),
         Container(margin: EdgeInsets.symmetric(vertical: 10), 
         child: Text(date[index], style: TextStyle(fontFamily: 'Montserrat',fontSize: 10),)),
         ],
         ),
          
        ],
      );
  }
}