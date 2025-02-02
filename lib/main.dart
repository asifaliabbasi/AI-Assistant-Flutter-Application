import 'package:flutter/material.dart';
import 'package:new_project/pallets.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Voice Assistant',
      theme:ThemeData.light().copyWith(scaffoldBackgroundColor: Pallete.whiteColor, appBarTheme:AppBarTheme(backgroundColor: Pallete.whiteColor)),

      home: HomePage(),
    );
  }
}
