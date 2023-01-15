import 'package:flutter/material.dart';

class StatefullWidgetLearn
    extends StatefulWidget {
  const StatefullWidgetLearn({Key? key})
      : super(key: key);

  @override
  State<StatefullWidgetLearn> createState() =>
      _StatefullWidgetLearnState();
}

class _StatefullWidgetLearnState
    extends State<StatefullWidgetLearn> {
  @override
  void initState() {
    print('initState çalıştı');
    super.initState();
  }

  @override
  void dispose() {
    //...
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // initState'den sonra çalışır.
    print('didUpdateDependencies çalıştı');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {});
      },
      child: const Text('Update State'),
    );
  }
}
