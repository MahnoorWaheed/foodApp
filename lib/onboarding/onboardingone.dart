// 
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/login/login.dart';
import 'package:fruit_market/onboarding/content_model.dart';
import 'package:get/get.dart';

class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({ Key? key }) : super(key: key);

  @override
  _OnBoardingOneState createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
        children: [
          Expanded(
            child: PageView.builder(
               physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              contents[i].image.toString(),
                              height: MediaQuery.of(context).size.height * 0.4,
                            ),
                            
                          ],
                        ),
                      ),
                      Text(
                        contents[i].title.toString(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade400,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            margin: EdgeInsets.all(40),
            width: 150,
            child: FlatButton(
              
              child: Text(
                  currentIndex == contents.length - 1 ? "Get Started" : "Next", 
                  style: TextStyle(fontSize: 15, fontFamily: 'Montserrat',),
                  ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Get.to(Login());
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
      
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
    );
  }
}