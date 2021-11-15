import 'package:flutter/material.dart';
import 'package:fruit_market/alldone.dart';
import 'package:loading_indicator/loading_indicator.dart';

class OrderDoneProgress extends StatefulWidget {
  const OrderDoneProgress({ Key? key }) : super(key: key);

  @override
  _OrderDoneProgressState createState() => _OrderDoneProgressState();
}

class _OrderDoneProgressState extends State<OrderDoneProgress> {
  late AnimationController controller;

 @override
  void initState()
  {
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=> AllDone(),),),);
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
         child: Text("Please Wait",
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900, fontFamily: 'Montserrat',),),
       ),
     ),
      ],
      ),
    );
  }
}