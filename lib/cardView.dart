import 'package:flutter/material.dart';

class CardAction extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String secondaryText;

  const CardAction(
      {required this.icon,
      required this.mainText,
      required this.secondaryText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon),
            Padding(padding: EdgeInsets.only(right: 12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(mainText),
                if (secondaryText != "") Text(secondaryText)
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
