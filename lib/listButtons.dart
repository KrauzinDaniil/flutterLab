import 'package:flutter/material.dart';
import 'scrollButton.dart';

class ButtonList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("У вас подключено"),
            Text("Подписки, автоплатежи и сервисы на которые вы подписались"),
            SizedBox(
              height: 145,
              child: ListView(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ButtonScroll(
                      image: "assets/sberphotoOne.png",
                      name: "СберПрайм",
                      date: "Платеж 9 июля",
                      price: "199 ₽ в месяц"),
                  ButtonScroll(
                      image: "assets/sberphotoTwo.png",
                      name: "Переводы",
                      date: "Автопродление 19 августа",
                      price: "199 ₽ в месяц"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
