import 'package:flutter/material.dart';
import 'package:life_cykle/app/app.dart';
import 'package:life_cykle/service/user_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isRegistered = await service.isRegistered();
  runApp(
    MyApp(isRegistered),
  );
}
