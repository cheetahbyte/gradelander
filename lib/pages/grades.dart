import 'package:flutter/material.dart';
import 'package:gradelander/pages/create-grade.dart';

class GradesPage extends StatelessWidget {
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreateGradePage()));
        },
        icon: const Icon(Icons.add));
  }
}
