import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/bottomnavbar/bottomscreens/bottnavbar.dart';
import 'package:fruit_market/login/loginmobile.dart';
import 'package:fruit_market/veges/dashboard.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.only(top: 80),
              child: Image.asset("assets/images/PngItem_2746375.png", 
              fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Fruit Market", 
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900, 
              color: Color(0xff69A03A), fontFamily: 'Montserrat',),
            ),),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 330,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400,
                    width: 3,),
                    borderRadius: BorderRadius.circular(10)
                    ),
              child: GestureDetector(
                onTap: (){
                  Get.to(LoginMobile());
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginMobile()),);
                },
                child: Container(
                  
                  padding: EdgeInsets.only(top: 19,left: 10),
                  child: Text("Enter your mobile number", 
                  style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey.shade300),
                  )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Text("OR", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18,fontFamily: 'Montserrat',),),
            ),
            Container(
               margin: EdgeInsets.only(top: 40, left: 30),
              child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 15,top: 25),
                        //  color: Colors.amberAccent,
                          height: 50,
                         width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          child: Row(
                            children: [
                             Container(         
                               margin: EdgeInsets.only(right: 10),
                               child: SvgPicture.asset("assets/images/google.svg",
                               height:30,
                               ),
                             ),
                             const Text("Login with",style: TextStyle(color: Colors.black, fontFamily: 'Montserrat',fontSize: 12),)
                            ],
                          ),
                          onPressed: ()
                          {
                          },
                        ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 7,top: 25),
                         height: 50,
                         width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
      
                            primary: Colors.white,
                          ),
                          child: Row(
                            children: [
                             Container(
                               
                               margin: EdgeInsets.only(right: 10),
                               child: SvgPicture.asset("assets/images/fb.svg",
                                height:30,),
                             ),
                             const Text("Login with", 
                             style: TextStyle(color: Colors.black, fontFamily: 'Montserrat',fontSize: 12),
                             ),
                            ],
                          ),
                          onPressed: ()
                          {
      
                          },
                        ),
                       ),
                     ],
                   ),
            ),
          ],
        ),
      ),
    );
  }
}