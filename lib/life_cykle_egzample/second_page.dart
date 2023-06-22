import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color? _color;
  @override
  void initState() {
    // print(" initState");
    super.initState();
    changeColor(Colors.black, 2);
  }

  Future<void> changeColor(Color? color, int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    _color = color;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    // print("didChangeDependencies");
    super.didChangeDependencies();
    changeColor(Colors.blue, 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(title: const Text("SecondPage")),
      body: Center(
        child: Container(
          color: Colors.black12,
          child: const Text("SecondPage"),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _color = null;
  }
}
