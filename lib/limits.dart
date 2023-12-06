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
            Text("Тарифы и лимиты"),
            Text("Для операций в Сбербанк онлайн"),
            CardAction(icon : Icons.speed, mainText : "Изменить суточный лимит", secondaryText: "На платежи и переводы"), 
            CardAction(icon : Icons.percent, mainText : "Переводы без комиссии", secondaryText: "Показать остаток в этом месяце"),
            CardAction(icon : Icons.forward, mainText : "Информация о тарифах и лимитах", secondaryText: "",)
            
          ],
        ),
      ),
    );
  }
}
