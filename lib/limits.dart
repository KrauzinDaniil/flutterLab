import 'package:flutter/material.dart';
import 'cardView.dart';

class OffersAndLimits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("Тарифы и лимиты"),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("Для операций в Сбербанк онлайн"),
            CardAction(
                icon: Icons.speed,
                mainText: "Изменить суточный лимит",
                secondaryText: "На платежи и переводы"),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 25,
              
            ),
            CardAction(
                icon: Icons.percent,
                mainText: "Переводы без комиссии",
                secondaryText: "Показать остаток в этом месяце"),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 25,
            
            ),
            CardAction(
              icon: Icons.forward,
              mainText: "Информация о тарифах и лимитах",
              secondaryText: "",
            )
          ],
        ),
      ),
    );
  }
}
