import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:provider/provider.dart';

import 'package:vtu_marks/assets/colors/MyColors.dart';
import 'package:vtu_marks/providers/data.dart';
import './Widgets/semester_list.dart';
import './Widgets/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool darkMode;

  void toggleTheme() {
    Provider.of<Data>(context, listen: false).toggleDarkMode();
    MediaQuery.of(context).platformBrightness = Brightness.dark;
  }

  Color get purpleTextColor {
    return darkMode ? MyColors.purpleAccent : MyColors.purple;
  }

  Color get purpleBgColor {
    return darkMode ? MyColors.purpleDark : MyColors.purpleLight;
  }

  void changeStatusNavBarColor() {
    FlutterStatusbarManager.setColor(purpleBgColor);
      FlutterStatusbarManager.setStyle(
          darkMode ? StatusBarStyle.LIGHT_CONTENT : StatusBarStyle.DARK_CONTENT);
      FlutterStatusbarManager.setNavigationBarColor(purpleBgColor);
      FlutterStatusbarManager.setNavigationBarStyle(darkMode ? NavigationBarStyle.LIGHT : NavigationBarStyle.DARK);
    //
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(statusBarColor: purpleBgColor),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // Provider.of<Data>(context, listen: false).setDarkModeVal(MediaQuery.of(context).platformBrightness == Brightness.dark);

    darkMode = Provider.of<Data>(context).darkMode;

    this.changeStatusNavBarColor();

    return Scaffold(
      backgroundColor:  darkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
          'Welcome Gopi Kishan P',
          style: TextStyle(
            color: Theme.of(context).colorScheme.purpleFg,
          ),
        ),
        elevation: 0,
        backgroundColor: purpleBgColor,
        foregroundColor: purpleTextColor,
        // brightness: darkMode ? Brightness.dark : Brightness.light,
        actions: [
          IconButton(
            icon: Icon(
              darkMode ? Icons.nights_stay : Icons.wb_sunny,
              color: purpleTextColor,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: <Widget>[
            SemesterList(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
