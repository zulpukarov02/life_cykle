import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:life_cykle/components/form_field.dart';
import 'package:life_cykle/pages/home_page.dart';
import 'package:life_cykle/pages/sign_up.dart';
import 'package:life_cykle/service/user_state.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _nameCtr = TextEditingController();
  final _passwordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignIn"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("SignIn"),
          Textformfield(controller: _nameCtr),
          Textformfield(controller: _passwordCtr),
          ElevatedButton(
            onPressed: () async {
              final isTrue = await service.signIn(
                name: _nameCtr.text,
                password: _passwordCtr.text,
              );
              if (isTrue) {
                // ignore: use_build_context_synchronously
                await Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              } else {
                log("login je parol tuura emes");
              }
            },
            child: const Text("SignIn"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: const Text("signup"),
          ),
        ],
      ),
    );
  }
}
