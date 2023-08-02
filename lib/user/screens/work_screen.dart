import 'package:flutter/material.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Center(
        child: Text(
          "Work Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
