import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/bottomnavbar/bottomscreens/bottnavbar.dart';


class Favorites extends StatefulWidget {
  const Favorites({ Key? key }) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<String> image=['assets/images/grape.jpg', 'assets/images/onion.jpg',
  'assets/images/broccoli.jpg','assets/images/orange.jpg','assets/images/injeer.jpg'];
  List<String> name=['Grapes','Onion','Broccoli','Orange','Anjeer'];
  List<String> price=['160 Per/ kg','180 Per/ kg','190 Per/ kg','130 Per/ kg','260 Per/ kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          height: 130,
          color: Color(0xff69A03A),
          child: Container(
            margin: EdgeInsets.only(top: 85, left: 10),
            child: Row(
      
              children: [
               InkWell(
                 onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>BottNavBar()));
                    },
                 child: Icon(Icons.arrow_back_ios_new, size: 15,color:Colors.white)),
              Text("      Favourites", 
              style: TextStyle(fontWeight: FontWeight.w900, 
              color: Colors.white, fontSize: 15,  fontFamily: 'Montserrat',),
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
           itemBuilder: (ctx,index) => AddToCartRow(index),
            ),
        )
      ],),
    );
  }

  Container AddToCartRow(int index) {
    return Container(
      margin: EdgeInsets.only(top: 10),
    child: Row(
children: [
Container(
  height: 120,
  width: 120,
  margin: EdgeInsets.symmetric(horizontal: 10),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(image: AssetImage(image[index]), fit: BoxFit.cover)),
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(name[index], 
            style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 12),
            )),
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Text(price[index], 
            style: TextStyle(fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 12),
            ))
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text("Pick Up From Organics", style: TextStyle( fontFamily: 'Montserrat',fontSize: 12),)),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: RatingBar.builder(
         itemSize: 15,
                 itemCount: 5,
             itemBuilder: (ctx,i)=>Icon(Icons.star, color: Colors.yellow , ), 
             onRatingUpdate: (onrating){}),
      ),
           Row(
             children: [
             Container(
               margin: EdgeInsets.only(left: 10),
               width: 30,
               height: 30,
               decoration:BoxDecoration(
                border: Border.all(
                  color: Colors.black
                ),
               ),
               child: Align(
                 alignment: Alignment.center,
                 child: Text("-")),
             ),
             Container(margin: EdgeInsets.only(left: 10), child: Text("1"),),
             Container(
margin: EdgeInsets.only(left: 10),
               width: 30,
               height: 30,
               decoration:BoxDecoration(
                border: Border.all(
                  color: Colors.black
                ),
               ),
               child: Align(
                 alignment: Alignment.center,
                 child: Text("+")),
             ),
             Container(
               width: 70,
               height: 30,
               margin: EdgeInsets.only(left: 40),
               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
      primary: Color(0xffCC7D00),
      onPrimary: Colors.white,
      onSurface: Colors.grey,
    ),
     onPressed: (){},
      child: Text("Add", style: TextStyle( fontFamily: 'Montserrat',fontSize: 10),),),
             ),
           ],
           ),
  ],
),
Column(),
],
        ),
    );
  }
}