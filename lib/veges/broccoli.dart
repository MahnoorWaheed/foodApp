import 'package:flutter/material.dart';
import 'package:fruit_market/bottomnavbar/myorders.dart';
import 'package:fruit_market/bottomnavbar/shoppingcart.dart';

class Broccoli extends StatefulWidget {

  const Broccoli({ Key? key }) : super(key: key);

  @override
  State<Broccoli> createState() => _BroccoliState();
}

class _BroccoliState extends State<Broccoli> {
  List<String> nutrition=['Fat', 'Potassium',
  'Selenium','Vitamin B9','Viatmin A', 'Vitamin K', 'Zinc', 'Phosphorus' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                        color: Color(0xff69A03A),
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        child:Row(
                          children:[ 
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 50),
                              child: Icon(Icons.arrow_back_ios_new, color: Colors.white,size: 18,),
                            ),
                            Container(
                            margin: const EdgeInsets.only(left: 10, top: 50),
                            child: Text("Details", 
                            style: TextStyle(fontSize: 20, color: Colors.white, 
                            fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)
                            ),
                          ),
                          ]
                        ), 
                      ),
             Container(
                height: 220,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Color(0xff1e324b),
                                    borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),),),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  ),
                  child: Image.asset("assets/images/broccoli.jpg", fit: BoxFit.cover, width: 405,)
                ),
                ),
                Container(
                          margin: const EdgeInsets.only(right: 250),
                          child: Text("Broccoli", 
                          style: TextStyle(
                            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)
                          ),
                        ), 
                Container(
      margin: EdgeInsets.only(left: 18,top: 10),
                  child: Text("Broccoli is a green vegetable that vaguely  nutritional"
      "Powerhouse of vitamin,fiber and antioxidents.Broccoli "
      "contains lutein and which may Prevent from stress and "
      "cellular damage in yourEyes.", 
      style: TextStyle(color: Colors.grey.shade500)
      ),
          ),
      Container(
                          margin: const EdgeInsets.only(right: 240, top: 10),
                          child: Text("Nutrition", 
                          style: TextStyle(
                            fontSize: 20, color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.w900,)
                          ),
                        ), 
         Container(
       height: 230,
       margin: EdgeInsets.only(top: 5),
       child:   ListView.builder(
         physics: BouncingScrollPhysics(),
     itemCount: nutrition.length,
         scrollDirection: Axis.vertical,
       itemBuilder: (ctx,index) => MyNutrition(index),
       ),
     ),
     Row(
       children: [
         Container(
           margin: EdgeInsets.only(left: 20),
child: Text("\$190/per kg", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Montserrat',),),
         ),
         Container(
           margin: EdgeInsets.only(left: 140),
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
      primary: Color(0xff769E49),
      onPrimary: Colors.white,
      onSurface: Colors.grey,
    ),
             onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoppingCart()));
             },
             child: Text("Buy Now", 
             style: TextStyle(fontFamily: 'Montserrat',),
             ),),
         )
       ],
     ),
        ],
        ),
      ),
    );
  }

  Container MyNutrition(int index) {
    return Container(
      margin: EdgeInsets.only(left: 18),
        child: Column(
          children: [
            Row(
              
              children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                child: Icon(Icons.circle_rounded, color: Colors.grey, size: 12,)),
              Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                child: Text(nutrition[index], ),
              )
            ],)
        ],),
      );
  }
}