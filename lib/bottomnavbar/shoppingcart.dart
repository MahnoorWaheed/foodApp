import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fruit_market/bottomnavbar/bottomscreens/bottnavbar.dart';
import 'package:fruit_market/placeorder.dart';
import 'package:get/get.dart';
import 'package:widget_utils/widget_utils.dart';
//
class ShoppingCart extends StatefulWidget {
  const ShoppingCart({ Key? key }) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<String> Veges = [
    'assets/images/brinjals.jpg',
    'assets/images/broccoli.jpg'
  ];
  List<String> dryfruits = ['assets/images/cashew.jpg'];
  List<String> vegetitle = ['Broccoli', 'Onion   '];
  List<String> drytitle = ['Cashew'];
  List<String> discount = ['Rs 40 Saved', 'Rs 60 Saved'];
  List<String> vegprice = ['150/per kg', '200/per kg'];
  List<String> dryprice = ['150/per kg'];
  List<String> drydis = ['Rs 40 Saved'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
              height: 120,
              color: Color(0xff69A03A),
              child: Container(
                margin: EdgeInsets.only(top: 60, left: 15),
                child: Row(
                  children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>BottNavBar()));
                    },
                    child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,)),
                  Text("      Shopping Cart",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Montserrat',)
                  ),

                ],
                ),
              ),
            ),
        Container(
              height: 50,
              color: Colors.white,

              child: Container(
                margin: EdgeInsets.only( left: 15),
                child: Row(
                  children: [
                  Icon(Icons.location_on, color: Colors.black,size: 15,),
                  Text("  440001  Nagpur ,Maharashtra",
                  style: TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat',
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Icon(Icons.arrow_drop_down_sharp, color: Colors.black,size: 22,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35,top: 5),
                      child: Text("  change Address",
                  style: TextStyle(color: Colors.blue, fontSize: 11,
                  fontFamily: 'Montserrat',
                  )),
                    ),
                ],
                ),
              ),
            ),
        Container(
              margin: EdgeInsets.only(left: 15,top: 10),
              child: Text("Vegetables",
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w700, fontFamily: 'Montserrat',),
              ),
        ),
        Container(
             height: MediaQuery.of(context).size.height*0.3,
             color: Colors.white,
             margin: EdgeInsets.symmetric(vertical: 10),
             child: ListView.builder(
               //physics: BouncingScrollPhysics(),
               itemCount: Veges.length,
               itemBuilder: (ctx,index) => myshopRow(index),
             ),
        ),
        Container(
              margin: EdgeInsets.only(left: 10,top: 10),
              child: Text("Dry Fruits",
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat',
              ),
              ),
              ),
        //       Container(
        //      height: 150,
        //      color: Colors.white,
        //      margin: EdgeInsets.only(top: 10),
        //      child:
        //   ListView.separated(
        //      itemCount: dryfruits.length,
        //
        //      separatorBuilder: (context, index) => Divider(
        //   color: Colors.grey.shade400,
        //   indent: 10,
        //   endIndent: 10,
        // ),
        //      //scrollDirection: Axis.horizontal,
        //     itemBuilder: (ctx,index) => mydryshopRow(index),
        //     ),
        //    ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                //physics: BouncingScrollPhysics(),
                itemCount: dryfruits.length,
                itemBuilder: (ctx,index) => mydryshopRow(index),
              ),
            ),
            Container(
              width: 150,
               margin: EdgeInsets.only(left: 230),
               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
      primary: Color(0xff769E49),
      onPrimary: Colors.white,
      onSurface: Colors.grey,
    ),
     onPressed: (){
      // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>PlaceOrder()))
      // ;
      Get.to(PlaceOrder());
     },
      child: Text("Place Order", style: TextStyle(fontFamily: 'Montserrat',),),),
             ),
          ],
        ),
      ),
    );
  }
  Row myshopRow(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
          image: AssetImage(Veges[index]),
          fit: BoxFit.fill,
          ),),
        ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(vegetitle[index],
                style: TextStyle(fontWeight: FontWeight.w900)),
              ),
            Container(
              margin: EdgeInsets.only(bottom: 15, left: 20),
              child:Text(discount[index],
          style: TextStyle(color: Colors.grey, fontSize: 12)
          ),)
            ],
          ),

        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(vegprice[index], style: TextStyle(color: Colors.grey, fontSize: 12))),

          Row(
             children: [
             Container(
               //margin: EdgeInsets.only(top: 10),
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
           ],
           ),
      ],
      )),
      Container(
          margin: EdgeInsets.only(left: 80,),
        child: Icon(Icons.delete),
      ),
    ],
    );
  }
  Row mydryshopRow(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
       margin: EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
          image: AssetImage(dryfruits[index]),
          fit: BoxFit.fill,
          ),),
        ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(drytitle[index],
                style: TextStyle(fontWeight: FontWeight.w900)),
              ),
            Container(
              margin: EdgeInsets.only(bottom: 15, left: 20),
              child:Text(drydis[index],
          style: TextStyle(color: Colors.grey, fontSize: 12)
          ),)
            ],
          ),

        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(dryprice[index], style: TextStyle(color: Colors.grey, fontSize: 12))),

          Row(
             children: [
             Container(
               //margin: EdgeInsets.only(top: 10),
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
           ],
           ),
      ],
      )),
      Container(
          margin: EdgeInsets.only(left: 80,),
        child: Icon(Icons.delete),
      )
    ],
    );
  }
}
