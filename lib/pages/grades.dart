import 'package:flutter/material.dart';
import 'package:gradelander/api/database.dart';
import 'package:gradelander/pages/create-grade.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  _GradesPageState();

  void gradeCreatedCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final grades = DB.grades;
    return Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CreateGradePage(callback: gradeCreatedCallback)));
            },
            icon: const Icon(Icons.add)),
        ListView(
            shrinkWrap: true,
            children: List.generate(grades.length,
                (index) => ListTile(title: Text(grades[index].toString()))))
      ],
    );
  }
}
