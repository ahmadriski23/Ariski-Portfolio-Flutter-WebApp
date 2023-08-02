import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  final Function(bool isHovered) onHover;
  final Widget child;

  HoverWidget({required this.onHover, required this.child});

  @override
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  // ignore: unused_field
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        widget.onHover(true);
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
        widget.onHover(false);
      },
      child: widget.child,
    );
  }
}
