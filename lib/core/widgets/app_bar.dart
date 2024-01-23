import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, {required String text}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    title: Text(text),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
  );
}
