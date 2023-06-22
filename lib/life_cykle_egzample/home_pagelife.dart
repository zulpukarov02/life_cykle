import 'package:flutter/material.dart';
import 'package:life_cykle/life_cykle_egzample/second_page.dart';

class HomePageLife extends StatefulWidget {
  const HomePageLife({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageLifeState createState() {
    return _HomePageLifeState();
  }
}

class _HomePageLifeState extends State<HomePageLife> {
  // @override
  // void initState() {
  //   print(" initState");
  //   super.initState();
  // }

  // @override

  // void didChangeDependencies() {
  //   print("didChangeDependencies");

  //   super.didChangeDependencies();
  // }

  // @override
  // void dirty() {
  //   super.dirty();
  // }

  // @override
  // void didUpdateWidget(Type oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  // }

  // @override
  // void clean() {
  //   super.clean();
  // }

  @override
  void dispose() {
    // print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Text("HOME PAGE"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        child: const Icon(Icons.airplanemode_active),
      ),
    );
  }
}
