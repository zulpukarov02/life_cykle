import 'package:flutter/material.dart';
import 'package:life_cykle/app/router.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.route, {super.key});
  final bool route;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      // initialRoute: route,
      onGenerateRoute: (settings) => MyRoutes.onGenerateRoute(settings, route),
    );
  }
}
