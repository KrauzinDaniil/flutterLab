import 'package:flutter/material.dart';
import 'chip.dart';

class Interests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top : 20)),
            Text("Интересы"),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("Мы подбираем истории и предложения по темам, которые вам нравятся"),
            Padding(padding: EdgeInsets.only(bottom: 16)),
            Wrap(
             children:<Widget> [
              MyChipWidget(title: "Еда"),
              MyChipWidget(title: "Саморазвитие"),
              MyChipWidget(title: "Технологии"),
              MyChipWidget(title: "Дом"),
              MyChipWidget(title: "Досуг"),
              MyChipWidget(title: "Забота о себе"),
              MyChipWidget(title: "Наука")

             ],
            )
          ],
        ),
      ),
    );
  }
}
