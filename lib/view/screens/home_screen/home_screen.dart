import 'package:flutter/material.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:leap/view/screens/home_screen/widgets/take_quiz_widget.dart';

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
      body: Column(
        children: [
          Container(
            height: context.screenHeight * .3,
            color: containerColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  nike,
                  width: 80,
                  height: 80,
                ).padding(
                  const EdgeInsets.all(6),
                ),
                Column(
                  children: [Text(dummyJobs[0].title)],
                ).padding(
                  const EdgeInsets.all(14),
                ),
              ],
            ),
          ),
          const TakeQuiz(),
        ],
      ),
    );
  }
}
