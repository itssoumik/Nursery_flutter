import 'package:flutter/material.dart';
import 'package:nursery/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AuthScreen());
    // Add more routes here as needed
    default:
      return MaterialPageRoute(builder: (_) => const AuthScreen());
  }
}
