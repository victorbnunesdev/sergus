import 'package:flutter/material.dart';

class SergusEducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Center(
          child: Text(
            'SERGUS EDUCAÇÃO',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}

final String text = "Em construção\n\n";
