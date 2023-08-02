import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        child: Center(
          child: Text(
            "Service Screen",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
            ),
          ),
        ));
  }
}
