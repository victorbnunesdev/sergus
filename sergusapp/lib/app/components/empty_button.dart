import 'package:flutter/material.dart';
import 'package:sergusapp/constants.dart';

class EmptyButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const EmptyButton(
      {Key key,
      this.text,
      this.press,
      this.color = Colors.white,
      this.textColor = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Center(
      child: OutlinedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(
                Size(size.width * 0.7, size.height * 0.09)),
            side: MaterialStateProperty.all(
              BorderSide(color: kPrimaryColor, width: 5),
            )),
        // borderSide: BorderSide(
        //     style: BorderStyle.solid, color: kPrimaryColor, width: 3),
        // color: kPrimaryColor,
        // textColor: Colors.green,
        onPressed: () {},
        child: Text(
          this.text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: kPrimaryColor),
        ),
      ),
    ));
  }
}
