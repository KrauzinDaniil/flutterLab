import 'package:flutter/material.dart';

class ButtonScroll extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String price;

  const ButtonScroll(
      {required this.image,
      required this.name,
      required this.date,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            splashColor: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(image),
                    Text(name)
                  ],
                ),
                 Text(date, textAlign: TextAlign.start),
                 Text(price, textAlign: TextAlign.start)
              ],
            )));
  }
}
