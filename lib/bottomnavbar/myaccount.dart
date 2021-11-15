

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/bottomnavbar/favorites.dart';
import 'package:fruit_market/bottomnavbar/myorders.dart';
import 'package:fruit_market/bottomnavbar/shoppingcart.dart';
import 'package:fruit_market/settings/settings.dart';
import 'package:get/get.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({ Key? key }) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List<IconData> myicon=[
    Icons.shopping_bag_rounded, Icons.favorite, Icons.settings, Icons.shopping_cart, Icons.rate_review,
    Icons.share, Icons.help, Icons.logout
    ];
    List<String> iconname=['My Order', 'Favorite','Settings','My Cart','Rate Us', 'Refer to a friend'
    ,'Help', 'Logout'
    ];
    List<Widget> route=[MyOrders(), Favorites(), Settings(), ShoppingCart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              color: Colors.green,
              child: Column(children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(top: 100, left: 150),
                    child: CircleAvatar(
                      radius: 50,
                      child: ClipOval(
                         
                        child: Image.asset("assets/images/Doraemoon.jpg",
                        fit: BoxFit.fill,
                        height: 100,
                        )),
                    ),
                  ), 
                  Container( 
                    margin: EdgeInsets.only(left: 90),  
                  child: SvgPicture.asset("assets/images/edit (1).svg")
                  ),
                  
                ],),
                Container(
                  margin: EdgeInsets.only(top: 20), 
                    child: Text("Mahnoor Waheed",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,
                    fontSize: 15, fontFamily: 'Montserrat',)
                    ),
                  ),
                   Container(
                     margin: EdgeInsets.only(top: 20), 
                    child: Text("mahnoorwaheed0900@gmail.com",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)
                    ),
                  ),
              ],),
            ),
            Container(
              height: 410,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: myicon.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index)=>MyIconRow(index)),
            )
        ],
        ),
      ),
    );
  }

  Container MyIconRow(int index) {
    return Container(
          child: InkWell(
            onTap: (){
              Get.to(route[index]);
            },
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 40),
                child: Icon(myicon[index], color: Colors.green,),
                ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 40),
                child: Text(iconname[index], style: TextStyle(fontWeight:FontWeight.w900,  fontFamily: 'Montserrat',fontSize: 12)),),
            ],
            ),
          ),
        );
  }
}