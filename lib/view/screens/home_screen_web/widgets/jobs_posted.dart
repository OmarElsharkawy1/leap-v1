import 'package:flutter/material.dart';

class JobsPosted extends StatelessWidget {
  const JobsPosted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '1500+',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 72,
          ),
        ),
        Text(
          ' Jobs posted week ago',
          style: TextStyle(
            color: Colors.white,
            fontSize: 72,
          ),
        ),
      ],
    );
  }
}
