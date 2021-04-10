import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vtu_marks/providers/data.dart';

import './screens/MainScreen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (_) => Data(),
      child: MaterialApp(
        title: 'VTU Marks Manager',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
