import 'package:flutter/material.dart';

class NavigationBarIcon extends StatelessWidget {
  const NavigationBarIcon({
    Key? key,
    required this.name,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
        Text(name),
      ],
    );
  }
}
