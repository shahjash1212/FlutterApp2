import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  const TopText({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      
      padding: const EdgeInsets.only(left: 30.0, top: 10.0,bottom: 10.0),
      child: Text(
        "Good Food.\nFast delivery.",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
