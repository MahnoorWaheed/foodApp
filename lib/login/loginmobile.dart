import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/verifications/verifynumber.dart';
import 'package:get/get.dart';

class LoginMobile extends StatefulWidget {

  const LoginMobile({ Key? key }) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  var txt = TextEditingController();
  // int? zero=0, one=1, two=2, three=3, four=4, five=5, six=6, seven=7, eight=8, nine=9;
  // String? okay='OK';

void SetState()
{

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(

          children: [
         Stack(
           children: [
           Container(
             width: 330,
                height: 60,
                 margin: const EdgeInsets.only(top: 100, left: 32),
                 padding: EdgeInsets.only( left:80, top: 7),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,
                      width: 2,),
                      borderRadius: BorderRadius.circular(10)
                      ),
                       child: TextField(
                         controller: txt,
                         keyboardType: TextInputType.phone,
                         
                         
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter Phone', 
                  
                  ),
              // onChanged: (s) {
              //   text = s;
              // }
                       ),
           ),
           Container(
             width: 60,
                height: 60,
                margin: EdgeInsets.only(top: 100, left: 32),
                padding: EdgeInsets.only(top: 20, left:12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,
                      width: 2,),
                      borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("+92", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w900, 
                        color: Colors.grey.shade600
                      ),),
           ),
      
         ],
         ), 
        Container(
             width: 330,
                      height: 60.5,
             margin: EdgeInsets.only(top: 45, left:32),
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
                // Navigator.push(
                //               context,
                //               MaterialPageRoute(builder: (context) => VerifyNumber()),    
                //        );
                Get.to(VerifyNumber());
               },
               child: Text("Verify", style: TextStyle(
                 fontWeight: FontWeight.w900, fontSize: 15, fontFamily: 'Montserrat',
               ),
               ),
             ),
           ), 
          //  Container(
          //    margin: EdgeInsets.only(top: 50),
          //    child: Row(
          //      mainAxisAlignment: MainAxisAlignment.center,
          //      children: [
          //      InkWell(
          //        onTap: (){
          //          setState(() {
          //            txt.text = '$one';
          //          });
          //        },
          //        child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 10),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Text('$one',
          //                      style: TextStyle(color: Colors.black, 
          //                      fontSize: 18, fontWeight: FontWeight.w900,
          //                      ),),
          //                     ),
                              
          //                 ),
          //      ),
          //               InkWell(
          //                 onTap: (){
          //                   setState(() {
          //                     txt.text = '$two';
          //                   });
          //                 },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text('$two', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("ABC", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$three';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$three", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("DEF", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //    ],),
          //  ),
          //  Container(
          //    margin: EdgeInsets.only(top: 30),
          //    child: Row(
          //      mainAxisAlignment: MainAxisAlignment.center,
          //      children: [
          //      InkWell(
          //         onTap: (){
          //           setState(() {
          //             txt.text = '$four';
          //           });
          //         },
          //        child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 10),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$four", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("GHI", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //      ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$five';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$five", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("JKL", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$six';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$six", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("MNO", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //    ],),
          //  ),
          //  Container(
          //    margin: EdgeInsets.only(top: 30),
          //    child: Row(
          //      mainAxisAlignment: MainAxisAlignment.center,
          //      children: [
          //      InkWell(
          //         onTap: (){
          //           setState(() {
          //             txt.text = '$seven';
          //           });
          //         },
          //        child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 10),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$seven", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("PQRS", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                   ),
                              
          //                 ),
          //      ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$eight';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$eight", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("TUV", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$nine';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Column(
          //                          children: [
          //                           Text("$nine", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                           Text("WXYZ", style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),)
          //                         ],
          //                       ),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //    ],),
          //  ),
          //  Container(
          //    margin: EdgeInsets.only(top: 30),
          //    child: Row(
          //      mainAxisAlignment: MainAxisAlignment.center,
          //      children: [
          //      InkWell(
          //         onTap: (){},
          //        child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 10),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffFFFFFF),
          //                     radius: 100.0,
          //                     child: SvgPicture.asset("assets/images/delete (2).svg")
          //                     ),
                              
          //                 ),
          //      ),
          //               InkWell(
          //                  onTap: (){
          //                    setState(() {
          //                      txt.text = '$zero';
          //                    });
          //                  },
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Text("$zero", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //               InkWell(
          //                  onTap: (){},
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
                           
          //                   margin: EdgeInsets.only(left: 40),
          //                   child:
          //                   CircleAvatar(
          //                      backgroundColor: Color(0xffEFEFEF),
          //                     radius: 100.0,
          //                     child: Container(
          //                       margin: EdgeInsets.only(top: 5),
          //                       child: Text("$okay", style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w900),),
          //                     ),
          //                     ),
                              
          //                 ),
          //               ),
          //    ],),
          //  ),
        ],
        ),
      ),
    );
  }
}