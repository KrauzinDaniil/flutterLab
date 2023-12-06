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
            Text("Интересы"),
            Text("Мы подбираем истории и предложения по темам, которые вам нравятся"),
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
