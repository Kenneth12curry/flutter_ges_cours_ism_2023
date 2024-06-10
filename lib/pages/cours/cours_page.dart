import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ges_cours_2023/shared/widgets/custom.widget.dart';

class CoursPage extends StatelessWidget {

  final String label;
  const CoursPage({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: TextWidget(text: label),
          )
        ],
      ),
    );
  }
}
