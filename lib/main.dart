import 'package:ariski_portfolio/user/screens/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARiski Portfolio',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NavigationBarScreen(),
    );
  }
}
