import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/verifications/pinputtest.dart';
import 'package:fruit_market/verifications/profileverification.dart';
import 'package:fruit_market/verifications/verificationcode.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerificationDone extends StatelessWidget {
  const VerificationDone({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //    const Duration(seconds: 10),(){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationCode()));
    //    }
    //    );
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
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PinPutText()));
                 },
                 child: SvgPicture.asset("assets/images/check.svg")),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 50),
             child: Text("Verification Code Send on ", style: 
             TextStyle(fontSize: 16,fontWeight: FontWeight.w900, 
             fontFamily: 'Montserrat'
             )
             ,),
                        
           ),
           Container(
             child: Text( "your Registered Mobile Number",
             style: 
             TextStyle(fontSize: 16,fontWeight: FontWeight.w900, 
             fontFamily: 'Montserrat',
             )
             ,
             ),
           )
         ],
       ),
    );
  }
}