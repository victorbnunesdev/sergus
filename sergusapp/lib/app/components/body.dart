import 'package:flutter/material.dart';
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
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/main_logo.png",
                    ),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        onPressed: () {},
                        color: kPrimaryColor,
                        textColor: Colors.green,
                        child: Text("Quero conhcer a Sergus"),
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
                            Icon(Icons.access_alarms, size: 18),
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

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
