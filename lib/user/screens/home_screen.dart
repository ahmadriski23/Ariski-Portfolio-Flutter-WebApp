import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        child: Center(
          child: Text(
            "Home Screen",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
            ),
          ),
        ));
  }
}
