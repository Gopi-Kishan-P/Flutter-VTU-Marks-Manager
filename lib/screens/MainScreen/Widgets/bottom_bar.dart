import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vtu_marks/assets/colors/MyColors.dart';
import 'package:vtu_marks/providers/data.dart';

class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  bool darkMode;

  Widget bottomElements(String info, String value) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Text(
            info,
            style: TextStyle(color: purpleTextColor, fontSize: 14),
          ),
          Text(
            value,
            style: TextStyle(
                color: purpleTextColor,
                // fontWeight: FontWeight.bold,
                fontSize: 30),
          )
        ],
      ),
    );
  }

  Color get purpleTextColor {
    return darkMode ? MyColors.purpleAccent : MyColors.purple;
  }

  Color get purpleBgColor {
    return darkMode ? MyColors.purpleDark : MyColors.purpleLight;
  }

  @override
  Widget build(BuildContext context) {
    darkMode = Provider.of<Data>(context).darkMode;
    return Container(
      color: purpleBgColor,
      height: 75,
      child: Row(
        children: [
          bottomElements('Current Percentage', '100.00%'),
          bottomElements('Current CGPA', '10.00'),
        ],
      ),
    );
  }
}
