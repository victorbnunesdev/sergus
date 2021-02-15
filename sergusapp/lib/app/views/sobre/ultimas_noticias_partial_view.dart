import 'package:flutter/material.dart';

class UltimasNoticiasPartialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Center(
          child: Text(
            'ÚLTIMAS NOTÍCIAS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(height: 10),
        carregarNoticias(),
      ],
    );
  }
}

carregarNoticias() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(8.0),
        height: 150,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Text('Notícia 1'),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        height: 150,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Text('Notícia 2'),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        height: 150,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Text('Notícia 3'),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        height: 150,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Text('Notícia 4'),
        ),
      ),
    ],
  );
}
