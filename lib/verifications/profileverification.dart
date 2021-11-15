import 'package:flutter/material.dart';
import 'package:fruit_market/bottomnavbar/bottomscreens/bottnavbar.dart';

class ProfileVerification extends StatelessWidget {
  const ProfileVerification({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
           margin: const EdgeInsets.only(top: 70,left: 30),
           child: const Text("Enter Your Name", style: TextStyle(fontSize: 17,
           fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900),),
         ),
         Container(
           width: 300,
           margin: const EdgeInsets.only(left: 45, top: 15),
           child: const TextField(
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),   
                        hintText: '',  
                      ),  
           )
         ), 
         Container(
           margin: const EdgeInsets.only(top: 20, left: 30),
           child: const Text("Add Address", style: TextStyle(fontSize: 17,
           fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900),),
         ),
         Container(
           margin: const EdgeInsets.only(left: 45, top: 10),
           width: 300,
           child: const TextField(
            // maxLength: 10,
             maxLines: 5,
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),
                      ),  
           ),
         ), 
         Center(
           child: Container(
             width: 310,
             height: 60,
       margin: EdgeInsets.only( top: 30),
              child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                          primary: Color(0xff69A03A), //background color of button
                   side: BorderSide(width:1, color:Colors.white), //border width and color
                       elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder( //to set border radius to button
                       borderRadius: BorderRadius.circular(10)
                   ),
               ),
               onPressed: (){
                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BottNavBar()),    
                       );
               },
               child: Text("Done", style: TextStyle(
                 fontWeight: FontWeight.w900, fontSize: 18, fontFamily: 'Montserrat',
               ),
               ),
             ),
           ),
         ),
      
        ],),
      ),
    );
  }
}