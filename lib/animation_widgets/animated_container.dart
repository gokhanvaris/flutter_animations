import 'package:flutter/material.dart';

class MyStatefulWidgetContainer
    extends StatefulWidget {
  const MyStatefulWidgetContainer({super.key});

  @override
  State<MyStatefulWidgetContainer>
      createState() =>
          _MyStatefulWidgetContainerState();
}

class _MyStatefulWidgetContainerState
    extends State<MyStatefulWidgetContainer> {
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
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color:
              selected ? Colors.red : Colors.blue,
          alignment: selected
              ? Alignment.center
              : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
