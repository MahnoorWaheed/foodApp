import 'package:flutter/material.dart';
import 'package:fruit_market/orderdonprogress.dart';

import 'action_button.dart';
import 'custom_txtfield.dart';

class PayNow extends StatelessWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle kGreyTextStyle = TextStyle(
      color: Colors.grey,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff69A03A),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text('Add your Card', style: TextStyle(fontFamily: 'Montserrat',),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image(image: AssetImage('assets/images/card.png')),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cardholder Name',
                    style: kGreyTextStyle.copyWith(fontSize: 13,fontFamily: 'Montserrat',),
                  ),
                  SizedBox(height: 10),
                  CustomTxtField(),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Number',
                    style: kGreyTextStyle.copyWith(fontSize: 13,fontFamily: 'Montserrat',),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTxtField(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTxtField(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTxtField(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTxtField(),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Valid through',
                    style: kGreyTextStyle.copyWith(fontSize: 13,fontFamily: 'Montserrat',),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: CustomTxtField(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: CustomTxtField(),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SVV/CVC',
                    style: kGreyTextStyle.copyWith(fontSize: 13,fontFamily: 'Montserrat',),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: CustomTxtField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: Text(
                          '3 or 4 digit code',
                          style: kGreyTextStyle.copyWith(fontSize: 13,fontFamily: 'Montserrat',),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      color: Color(0xff69A03A),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image(image: AssetImage('assets/images/tick.png')),
                ),
              ],
            ),
            SizedBox(height: 20),
            ActionButton(
              title: 'ADD CARD NUMBER',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderDoneProgress()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
