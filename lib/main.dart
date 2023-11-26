import 'package:assesment_flutter_barra_part3/pages/ListPage.dart';
import 'package:flutter/material.dart';
import 'package:assesment_flutter_barra_part3/pages/CartPage.dart';
import 'package:assesment_flutter_barra_part3/pages/HomePage.dart';
import 'package:assesment_flutter_barra_part3/pages/ListData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "/ListData": (context) => ListData(),
        "/ListPage": (context) => ListPage(), // Corrected route name
      },
    );
  }
}
