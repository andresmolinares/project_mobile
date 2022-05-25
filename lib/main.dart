import 'package:flutter/material.dart';
import 'package:project_mobile/view/count_color.dart';
// import 'package:project_mobile/view/contador.dart';
// import 'package:project_mobile/view/count_screen.dart';
// import 'package:project_mobile/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: CountColor()
        // home: HomeView()
        // home: CountScreen()
        // home: Contador()
        );
  }
}
