import 'package:flutter/material.dart';
import 'package:fruit_market/login/login.dart';
import 'package:fruit_market/verifications/verificationdone.dart';
import 'package:loading_indicator/loading_indicator.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({ Key? key }) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> with TickerProviderStateMixin {
  late AnimationController controller;

 @override
  void initState()
  {
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> VerificationDone(),),),);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
     Center(
       child: Container(
         height: 120,
         margin: const EdgeInsets.only(top: 160),
         child: LoadingIndicator(
          
         indicatorType: Indicator.lineSpinFadeLoader,
         colors: const [Colors.green],  
         
       ),       
       ),
       
     ),
     
     Center(
       child: Container(
         margin: EdgeInsets.only(top: 40),
         child: Text("Verifying your mobile number",
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900, color: Colors.grey.shade400 ,
          fontFamily: 'Montserrat',
          ),),
       )
     )
      ],
      ),
    );
  }
}