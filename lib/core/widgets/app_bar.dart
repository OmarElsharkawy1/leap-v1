import 'package:flutter/material.dart';

AppBar appBar({required String text}){
  return AppBar(
backgroundColor: Colors.white,
    elevation: 1,
    title: Text(text),
    centerTitle: true,
  );
}