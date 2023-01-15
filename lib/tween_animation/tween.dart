import 'package:flutter/material.dart';

class FlutterAnimations extends StatefulWidget {
  @override
  _FlutterAnimationsState createState() =>
      _FlutterAnimationsState();
}

class _FlutterAnimationsState
    extends State<FlutterAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 4000,
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Opacity(
          opacity: _controller.value,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
