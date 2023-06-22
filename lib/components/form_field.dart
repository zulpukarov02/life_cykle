import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  const Textformfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        controller: controller,
      ),
    );
  }
}
