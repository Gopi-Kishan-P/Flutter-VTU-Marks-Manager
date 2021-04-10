import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vtu_marks/assets/colors/MyColors.dart';
import 'package:vtu_marks/providers/data.dart';

class Sem extends StatefulWidget {
  final int sem;
  Sem(this.sem);

  @override
  _SemState createState() => _SemState();
}

class _SemState extends State<Sem> {
  final int currSem = 4;
  bool darkMode;

  String get semSuffix {
    switch (this.widget.sem) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  Color get semColorForeground {
    if (this.widget.sem == currSem)
      return darkMode ? MyColors.blueAccent : MyColors.blue;
    if (this.widget.sem < currSem)
      return darkMode ? MyColors.greenAccent : MyColors.green;
    if (this.widget.sem > currSem)
      return darkMode ? MyColors.pinkAccent : MyColors.pink;
    return null;
  }

  Color get semColorBackground {
    if (this.widget.sem == currSem)
      return darkMode ? MyColors.blueDark : MyColors.blueLight;
    if (this.widget.sem < currSem)
      return darkMode ? MyColors.greenDark : MyColors.greenLight;
    if (this.widget.sem > currSem)
      return darkMode ? MyColors.pinkDark : MyColors.pinkLight;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    darkMode = Provider.of<Data>(context).darkMode;
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          bottom: 5,
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: semColorBackground,
          borderRadius: BorderRadius.circular(18),
          // border: Border.all(color: semColorForeground)
          boxShadow: [
            BoxShadow(color: semColorForeground, ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: semColorForeground,
                    radius: 25,
                    child: Text(
                      this.widget.sem.toString() + semSuffix,
                      style: TextStyle(
                          fontSize: 21,
                          color: darkMode ? Colors.black : Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Semester',
                    style: TextStyle(
                      color: semColorForeground,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                  child: Text(
                '10.00',
                style: TextStyle(
                  color: semColorForeground,
                  fontSize: 21,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
