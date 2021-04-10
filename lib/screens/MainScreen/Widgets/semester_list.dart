import 'package:flutter/material.dart';
import 'package:vtu_marks/assets/colors/MyColors.dart';
import 'package:vtu_marks/screens/MainScreen/Widgets/sem.dart';

class SemesterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        children: [for (var i = 1; i <= 8; i++) Sem(i)],
      ),
      
    );
  }
}
