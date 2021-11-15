import 'package:flutter/material.dart';
import 'package:fruit_market/verifications/profileverification.dart';
import 'package:fruit_market/verifications/verificationdone.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinPutText extends StatefulWidget {
  const PinPutText({ Key? key }) : super(key: key);

  @override
  State<PinPutText> createState() => _PinPutTextState();
}

class _PinPutTextState extends State<PinPutText> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.greenAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (context) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
child: Text("Enter The 4 digit code that was \n"
"send to your Mobile Number",
style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900, 
             fontFamily: 'Montserrat'
             ),
),
                    ),
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(20.0),
                      child: PinPut(
                        fieldsCount: 4,
      
                        //onSubmit: (String pin) => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ProfileVerification())),
                        focusNode: _pinPutFocusNode,
                        controller: _pinPutController,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.green.withOpacity(.5),
                          ),
                        ),
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
             margin: EdgeInsets.only(left: 220,top: 10),
             child: GestureDetector(
               onTap: (){},
               child: Text("Resend again?", 
               style: TextStyle(color: Colors.blue),
               ),),
           ),
                    // const SizedBox(height: 60.0),
                    
                    Container(
                      margin: EdgeInsets.only(top: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // FlatButton(
                          //   onPressed: () => _pinPutFocusNode.requestFocus(),
                          //   child: const Text('Focus'),
                          // ),
                          FlatButton(
                            onPressed: () => _pinPutFocusNode.unfocus(),
                            child: const Text('Unfocus',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, 
             fontFamily: 'Montserrat'
             ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () => _pinPutController.text = '',
                            child: const Text('Clear All', 
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900, 
             fontFamily: 'Montserrat'
             ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  // void _showSnackBar(String pin, BuildContext context) {
  //   final snackBar = SnackBar(
  //     duration: const Duration(seconds: 3),
  //     content: Container(
  //       height: 80.0,
  //       child: Center(
  //         child: Text(
  //           'Pin Submitted. Value: $pin',
  //           style: const TextStyle(fontSize: 25.0),
  //         ),
  //       ),
  //     ),
  //     backgroundColor: Colors.deepPurpleAccent,
  //   );
  //   Scaffold.of(context)
  //     ..hideCurrentSnackBar()
  //     ..showSnackBar(snackBar);
  // }
}