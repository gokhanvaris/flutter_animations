import 'package:flutter/material.dart';

class MyStatefulWidgetPositioned
    extends StatefulWidget {
  const MyStatefulWidgetPositioned({super.key});

  @override
  State<MyStatefulWidgetPositioned>
      createState() =>
          _MyStatefulWidgetPositionedState();
}

class _MyStatefulWidgetPositionedState
    extends State<MyStatefulWidgetPositioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            width: selected ? 200.0 : 50.0,
            height: selected ? 50.0 : 200.0,
            top: selected ? 50.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                color: Colors.blue,
                child: const Center(
                    child: Text('Tap me')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
