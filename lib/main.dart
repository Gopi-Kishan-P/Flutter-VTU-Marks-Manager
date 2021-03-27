import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/MainScreen/main_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTU Marks Manager',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
