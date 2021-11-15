import 'package:flutter/material.dart';
import 'package:fruit_market/onboarding/onboardingone.dart';
import 'package:get/get.dart';
import 'package:widget_utils/widget_utils.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xff69A03A),
     body: SingleChildScrollView(
       child: Column(
         children:  [
           Container(
             margin: const EdgeInsets.only(top: 290),
             child:  GestureDetector(
               onTap: (){
               
                Get.to(OnBoardingOne());
               },
               child: const Text("Fruit Market", 
               style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900,
               fontFamily: 'Montserrat',
                color: Color(0xffFFFFFF)),
               ),
             ),
           ),
            Container(
              margin: const EdgeInsets.only(top: 147),
              height: MediaQuery.of(context).size.height*0.4 ,
        width: MediaQuery.of(context).size.width*1.00,
              child: Image.asset("assets/images/mixedfruit.png", 
              fit: BoxFit.fill,),
            )
          
       ],),
     ),
     
    );
  }
}