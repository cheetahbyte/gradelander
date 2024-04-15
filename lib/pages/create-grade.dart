import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateGradePage extends StatelessWidget {
  const CreateGradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(children: [
      Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Enter a search term"),
      ))
    ]))));
  }
}
