import 'package:flutter/material.dart';

void pushPage(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context) => widget),
  );
}