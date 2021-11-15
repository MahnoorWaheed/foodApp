import 'package:flutter/material.dart';


class LanguageSetting extends StatelessWidget {
  const LanguageSetting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
            height: 140,
            color: Color(0xff69A03A),
            child: Row(
              children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
                child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,)),
              Container(
                margin: EdgeInsets.only(top: 75),
                child: Text("      Language Settings", 
                style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white,  fontFamily: 'Montserrat',)),
              ),
            ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text("Languages", style: TextStyle(color: Colors.grey.shade400, 
            fontSize: 16, fontWeight: FontWeight.w700,  fontFamily: 'Montserrat',)
            ),),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(child: Text("Languages", style: TextStyle(fontWeight: FontWeight.w700,  fontFamily: 'Montserrat',),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    child: Text("English", 
                    style: TextStyle(color: Colors.black, 
            fontSize: 16, fontWeight: FontWeight.w700,  fontFamily: 'Montserrat',)
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(child: Text("(United\nStates)", 
                        style: TextStyle(color: Colors.grey.shade400, 
            fontSize: 12, fontWeight: FontWeight.w700,  fontFamily: 'Montserrat',)
                        ),)
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_forward_ios_outlined, size: 17,),)
                ],
              ),
            ),
      ],),
    );
  }
}