import 'package:flutter/material.dart';

/*
AnimatedContainer, which can transition more values at once.
AnimatedPadding, which can animate the padding instead of the alignment.
AnimatedSlide, which can animate the translation of child by a given offset relative to its size.
AnimatedPositioned, which, as a child of a Stack, automatically transitions its child's position over a given duration whenever the given position changes.

*/
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() =>
      _MyStatefulWidgetState();
}

class _MyStatefulWidgetState
    extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected
                ? Alignment.topRight
                : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
