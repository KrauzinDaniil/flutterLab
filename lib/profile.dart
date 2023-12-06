import 'package:flutter/material.dart';
import 'listButtons.dart';
import 'limits.dart';
import 'interests.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[ButtonList(),
             OffersAndLimits(),
             Interests()
             ],
        )
      ],
    );
  }
}
