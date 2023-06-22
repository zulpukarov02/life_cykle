import 'package:flutter/material.dart';
import 'package:life_cykle/components/form_field.dart';
import 'package:life_cykle/pages/home_page.dart';
import 'package:life_cykle/pages/sign_in.dart';
import 'package:life_cykle/service/user_state.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _nameCtr = TextEditingController();
  final _lastNameCtr = TextEditingController();
  final _passwordCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Register"),
          Textformfield(controller: _nameCtr),
          Textformfield(controller: _lastNameCtr),
          Textformfield(controller: _passwordCtr),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black26)),
                onPressed: () async {
                  service.signUp(
                    name: _nameCtr.text,
                    lastName: _lastNameCtr.text,
                    password: _passwordCtr.text,
                  );
                  await Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text("Register"),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black26)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: const Text(
                  "signin",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
