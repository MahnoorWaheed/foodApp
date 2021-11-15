import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllDone extends StatefulWidget {
  const AllDone({ Key? key }) : super(key: key);

  @override
  _AllDoneState createState() => _AllDoneState();
}

class _AllDoneState extends State<AllDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
           Center(
             child: Container(
               width: 150,
               height: 150,
               margin: EdgeInsets.only(top: 150),
               child: GestureDetector(
                 onTap: (){
                   //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileVerification()));
                 },
                 child: SvgPicture.asset("assets/images/check.svg")),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 50),
             child: Text("Payment Successful ", style: 
             TextStyle(fontSize: 16,fontFamily: 'Montserrat',)
             ,),
                        
           ),
           Container(
             child: Text( "Your Order is Booked",
             style: 
             TextStyle(fontSize: 16,fontFamily: 'Montserrat',)
             ,
             ),
           )
         ],
       ),
    );
  }
}