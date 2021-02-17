import 'package:flutter/material.dart';

class BodyBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Icon(Icons.local_phone, size: 20),
          //   Text("(79) 2106 - 4500"),
          // ]),
          // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Text(
          //     "Av. Augusto Maynard, 321, 1º andar",
          //     textAlign: TextAlign.center,
          //   ),
          // ]),
          // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //   Text(
          //     "São José, 49015-380 - Aracaju/SE",
          //     textAlign: TextAlign.center,
          //   ),
          // ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(onPressed: null, child: Text("Fale Conosco"))
          ])
        ],
      ),
    );
  }
}
