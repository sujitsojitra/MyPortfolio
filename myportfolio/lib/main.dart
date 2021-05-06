import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'config/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JasminSojitra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: AppColors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
