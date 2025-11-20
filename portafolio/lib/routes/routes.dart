import 'package:flutter/material.dart';
import '../screens/home.dart'; 
import '../screens/contact.dart'; 


class AppRoutes {

  static const String initialRoute = HomeScreen.routeName;

  static Map<String, WidgetBuilder> get routes => {

    HomeScreen.routeName: (context) => const HomeScreen(),
    ContactScreen.routeName: (context) => const ContactScreen(),
  };
}