import 'package:flutter/material.dart';
import 'package:gradelander/api/database.dart';

class CreateGradePage extends StatefulWidget {
  final Function callback;
  const CreateGradePage({
    super.key,
    required this.callback,
  });

  @override
  State<CreateGradePage> createState() => _CreateGradePageState();
}

class _CreateGradePageState extends State<CreateGradePage> {
  _CreateGradePageState();

  void createGrade(int grade) => DB.addGrade(grade);

  @override
  Widget build(BuildContext context) {
    final myGradeController = TextEditingController();

    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: TextField(
            controller: myGradeController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your grade"),
          )),
      FloatingActionButton(
          onPressed: () {
            createGrade(int.tryParse(myGradeController.text) ?? 0);
            Navigator.pop(context);
            widget.callback();
          },
          child: const Icon(Icons.add)),
    ]))));
  }
}
