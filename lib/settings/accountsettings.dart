import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({ Key? key }) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
            height: 100,
            color: Color(0xff69A03A),

            child: Container(
              margin: EdgeInsets.only(top: 60, left: 15),
              child: Row(
                children: [
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,size: 15,),
                Text("      Account Settings", 
                style: TextStyle(color: Colors.white, fontSize: 18,  fontFamily: 'Montserrat',)
                )
              ],
              ),
            ),
          ),
       Row(
         children: [
         
         Container(
           margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
           child: Icon(Icons.security, color: Color(0xff69A03A),),
         ),
         Container(
           margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Text("Security", style: TextStyle( fontFamily: 'Montserrat',),),)
       ],),
       Row(children: [Container(
         margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
           child: Icon(Icons.no_accounts_sharp, color: Color(0xff69A03A),),
         ),
         Container(
           margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Text("Deactivate Account", style: TextStyle( fontFamily: 'Montserrat',),),)],),
       Row(children: [Container(
         margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
           child: Icon(Icons.delete, color: Color(0xff69A03A),),
         ),
         Container(
           margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Text("Delete Account", style: TextStyle( fontFamily: 'Montserrat',),),)],),
     ],),
    );
  }
}