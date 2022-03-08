import 'package:flutter/material.dart';
import 'package:my_app/screens/homePage.dart';
import 'package:my_app/screens/introScreen.dart';

Future<Route> generateRoute(RouteSettings settings) async {
  switch (settings.name) {
    case 'home':
    return MaterialPageRoute(builder: (context) => const HomePage());
    default:
      return MaterialPageRoute(builder: (context) => const IntroScreen(key: Key('intro'),));
  }
}
