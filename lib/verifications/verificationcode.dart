import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/verifications/profileverification.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
         Container(
           margin: EdgeInsets.only(top: 60),
           child: Text("Enter The 4 digit code that was"
           , style: 
               TextStyle(fontSize: 16,fontWeight: FontWeight.w900)
               ,
           ),
         ) ,
         Container(
      child: Text("send to your Mobile Number"
      , style: 
               TextStyle(fontSize: 16,fontWeight: FontWeight.w900)
               ,
      ),
         ) ,
         Container(
           margin: EdgeInsets.only(top: 50),
           child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 10),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: TextField( 
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 20),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: TextField( 
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 20),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                 style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 20),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                 style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                            ),
                            ),
                            
                        ),
             ],
             ),
         ),
        Container(
             width: 330,
                      height: 60.5,
             margin: EdgeInsets.only(top: 30, left: 9),
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
                              MaterialPageRoute(builder: (context) => ProfileVerification()),    
                       );
               },
               child: Text("Verify", style: TextStyle(
                 fontWeight: FontWeight.w900, fontSize: 18
               ),
               ),
             ),
           ), 
           Container(
             margin: EdgeInsets.only(left: 220),
             child: GestureDetector(
               onTap: (){},
               child: Text("Resend again?", 
               style: TextStyle(color: Colors.blue),
               ),),
           ),
           Container(
             margin: EdgeInsets.only(top: 40),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 10),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Text("1", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("2", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("ABC", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("3", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("DEF", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
             ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 10),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("4", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("GHI", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("5", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("JKL", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("6", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("MNO", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
             ],),
           ),
           Container(
             margin: EdgeInsets.only(top: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 10),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("7", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("PQRS", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                          ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("8", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("TUV", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                 children: [
                                  Text("9", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                                  Text("WXYZ", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
                                ],
                              ),
                            ),
                            ),
                            
                        ),
             ],),
           ),
           Container(
             margin: EdgeInsets.only(top: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 10),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffFFFFFF),
                            radius: 100.0,
                            child: SvgPicture.asset("assets/images/delete (2).svg")
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("0", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
                            ),
                            ),
                            
                        ),
                        Container(
                          width: 60,
                          height: 60,
                         
                          margin: EdgeInsets.only(left: 40),
                          child:
                          CircleAvatar(
                             backgroundColor: Color(0xffEFEFEF),
                            radius: 100.0,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("OK", style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w900),),
                            ),
                            ),
                            
                        ),
             ],),
           ),
        ],
        ),
      ),
    );
  }
}