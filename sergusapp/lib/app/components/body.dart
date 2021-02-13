import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/default_button.dart';
import 'package:sergusapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child:
                Image.asset("assets/images/main_top2.png", width: size.width),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png", width: size.width),
          ),
          Column(
            children: [
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
              Container(
                height: size.height * 0.24,
                width: size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      text: "Entrar",
                      press: () {},
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: OutlineButton(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: kPrimaryColor,
                            width: 3),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        onPressed: () {},
                        color: kPrimaryColor,
                        textColor: Colors.green,
                        child: Text(
                          "Quero conhcer a Sergus",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: size.height * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.local_phone, size: 20),
                            Text("(79) 2106 - 4500"),
                          ]),
                      SizedBox(height: 5),
                      Text(
                        "Av. Augusto Maynard, 321, 1º andar São José, 49015-380 - Aracaju/SE",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
