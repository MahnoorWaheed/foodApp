import 'package:flutter/material.dart';


class ChangeAddress extends StatefulWidget {
  const ChangeAddress({ Key? key }) : super(key: key);

  @override
  _ChangeAddressState createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Color(0xff69A03A),

            child: Container(
              margin: EdgeInsets.only(top: 60, left: 15),
              child: Row(
                children: [
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,),
                Text("      Change Address", 
                style: TextStyle(color: Colors.white, fontSize: 14,  fontFamily: 'Montserrat',)
                )
              ],
              ),
            ),
          ),
          Container(
           margin: const EdgeInsets.only(top: 20, left: 30),
           child: const Text("Add Address", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900,  fontFamily: 'Montserrat',),),
         ),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
           //width: 300,
           child: const TextField(
            // maxLength: 10,
             maxLines: 5,
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),
                      ),  
           ),
         ), 
         Container(
           width: 300,
           height: 60,
       margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: ElevatedButton(
             style: ElevatedButton.styleFrom(
                        primary: Color(0xff69A03A), //background color of button
                 side: BorderSide(width:1, color:Colors.white), //border width and color
                     elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                     borderRadius: BorderRadius.circular(10)
                 ),
             ),
             onPressed: (){},
             child: Text("Change Address", style: TextStyle(
               fontWeight: FontWeight.w900, fontSize: 16,  fontFamily: 'Montserrat',
             ),
             ),
           ),
         ),
        ],
      ),
    );
  }
}