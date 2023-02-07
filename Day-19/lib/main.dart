import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/cart_page.dart';
import 'package:flutter_tutorial/screens/home_page.dart';
import 'package:flutter_tutorial/screens/login_page.dart';
import 'package:flutter_tutorial/utils/routes.dart';
import 'package:flutter_tutorial/widgets/themes.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
