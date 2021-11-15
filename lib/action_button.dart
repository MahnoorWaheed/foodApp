import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({required this.onTap, required this.title});

  final String title;
  final VoidCallback onTap;

  static const TextStyle kBlackTextStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width - 50,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Color(0xff69A03A),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              title,
              style: kBlackTextStyle.copyWith(
                fontSize: 17,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
