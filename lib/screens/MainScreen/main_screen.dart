import 'package:flutter/material.dart';

import 'package:vtu_marks/assets/colors/MyColors.dart';
import './Widgets/semester_list.dart';
import './Widgets/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Gopi Kishan P'),
        elevation: 0,
        backgroundColor: MyColors.purple,
        brightness: Brightness.light,
      ),
      body: Column(
        children: <Widget>[
          SemesterList(),
          BottomBar(),
        ],
      ),
    );
  }
}
