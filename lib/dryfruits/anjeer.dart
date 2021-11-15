import 'package:flutter/material.dart';
import 'package:fruit_market/bottomnavbar/myorders.dart';

class Anjeer extends StatefulWidget {
  const Anjeer({ Key? key }) : super(key: key);

  @override
  State<Anjeer> createState() => _AnjeerState();
}

class _AnjeerState extends State<Anjeer> {
  List<String> nutrition=['Protein', 'Falates',
  'Iron','Niacin','Viatmin A', 'Vitamin E', 'Calcium', 'Carbohydrates' ];
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
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w900,)
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
                  child: Image.asset("assets/images/injeer.jpg", fit: BoxFit.cover, width: 405,)
                ),
                ),
                Container(
                          margin: const EdgeInsets.only(right: 250),
                          child: Text("Anjeer", 
                          style: TextStyle(
                            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900,)
                          ),
                        ), 
                Container(
      margin: EdgeInsets.only(left: 18,top: 10),
                  child: Text("Anjeer might helps to manage diabetes due to his"
"antioxidants and anti inflammatory properties. it reduces "
"the breakdown of carbohydrates and prevents the "
"damage of cells.", 
      style: TextStyle(color: Colors.grey.shade500)
      ),
          ),
      Container(
                          margin: const EdgeInsets.only(right: 240, top: 10),
                          child: Text("Nutrition", 
                          style: TextStyle(
                            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900,)
                          ),
                        ), 
         Container(
       height: 230,
       margin: EdgeInsets.only(top: 5),
       child:   ListView.builder(
     itemCount: nutrition.length,
     physics: BouncingScrollPhysics(),
         scrollDirection: Axis.vertical,
       itemBuilder: (ctx,index) => MyNutrition(index),
       ),
     ),
     Row(
       children: [
         Container(
           margin: EdgeInsets.only(left: 20),
child: Text("\$260/per kg", style: TextStyle(fontWeight: FontWeight.w900),),
         ),
         Container(
           margin: EdgeInsets.only(left: 150),
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
      primary: Color(0xff769E49),
      onPrimary: Colors.white,
      onSurface: Colors.grey,
    ),
             onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyOrders()));

             },
             child: Text("Buy Now"),),
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
                child: Text(nutrition[index]),
              )
            ],)
        ],),
      );
  }
}