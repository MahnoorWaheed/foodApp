import 'package:flutter/material.dart';
import 'package:fruit_market/settings/accountsettings.dart';
import 'package:fruit_market/settings/changeaddress.dart';
import 'package:fruit_market/settings/language.dart';
import 'package:fruit_market/settings/mynotification.dart';


class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<IconData> myicons=[Icons.account_circle,Icons.notifications, Icons.language, Icons.location_on];
  List<String> names=["Account", "Notification", "Languages", "Choose Location"];
  List<Widget> routes=[AccountSettings(), MyNotification(), LanguageSetting(), ChangeAddress()];

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
                Text("      Settings", 
                style: TextStyle(color: Colors.white, fontSize: 18,  fontFamily: 'Montserrat',)
                )
              ],
              ),
            ),
          ),
        Expanded(child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: names.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (ctx, i)=>Myrowdata(i),
        ),
        ),
      ],),
    );
  }

  InkWell Myrowdata(int index) {
    return InkWell(
      onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>routes[index]));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Icon(myicons[index], color: Color(0xff69A03A),)),
            Container(
              child: Text(names[index], style: TextStyle( fontFamily: 'Montserrat',),)),
          ],),
      ),
    );
  }
}