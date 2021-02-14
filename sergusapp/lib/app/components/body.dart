import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/default_button.dart';
import 'package:sergusapp/constants.dart';

import 'empty_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
            flex: 6,
            child: Stack(
              children: [
                Row(children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.7,
                    child: Image.asset(
                      "assets/images/main_top2.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ]),
                Row(children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.6,
                    child: Image.asset(
                      "assets/images/main_top.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ]),
                Container(
                    height: size.height * 0.66,
                    width: size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SafeArea(
                          child: AnimatedContainer(
                            padding: EdgeInsets.only(top: size.height * 0.1),
                            duration: Duration(seconds: 2),
                            child: Image.asset(
                              "assets/images/main_logo.png",
                              height: size.height * 0.25,
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            )),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(
                  text: "Entrar",
                  press: () {},
                ),
                EmptyButton(
                  text: "Quero conhecer a Sergus",
                  press: () {
                    Navigator.of(context).pushReplacementNamed('/about');
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Container(
              height: size.height * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.local_phone, size: 20),
                    Text("(79) 2106 - 4500"),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Av. Augusto Maynard, 321, 1º andar",
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "São José, 49015-380 - Aracaju/SE",
                      textAlign: TextAlign.center,
                    ),
                  ])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
