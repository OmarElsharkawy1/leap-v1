import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(logo),
            ),
          ),
        ],
      ),
      backgroundColor: secondaryBackGroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        title: Image.asset(logo),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: ImageIcon(AssetImage(notification)),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: backGroundColor,
            border: Border.all(
              color: borderColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(illustration),
                const Column(
                  children: [
                    Text(
                      'Take a Quiz',
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      'you can take a quiz to specify',
                      style: TextStyle(
                        color: mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' which career is suitable for you.',
                      style: TextStyle(
                        color: mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
