import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class WebAppbar extends StatefulWidget {
  const WebAppbar({Key? key}) : super(key: key);

  @override
  State<WebAppbar> createState() => _WebAppbarState();
}

class _WebAppbarState extends State<WebAppbar> {
  final List<String> recoursesList = ['Recourses', 'Recourse1', 'Recourse2'];
  final List<String> optionsList = ['Options', 'Option1', 'Option2'];

  @override
  Widget build(BuildContext context) {
    String recoursesListValue = recoursesList.first;
    String optionsListValue = optionsList.first;
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: context.screenWidth * .03,
          ),
          // Logo
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AssetPath.logo,
              width: 64,
              height: 40,
            ),
          ),
          // Internships
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Internships',
                style: TextStyle(color: mainFontColor, fontSize: 14),
              ),
            ),
          ),
          // Jobs
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Jobs',
                style: TextStyle(color: mainFontColor, fontSize: 14),
              ),
            ),
          ),
          // Companies
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Companies',
                style: TextStyle(color: mainFontColor, fontSize: 14),
              ),
            ),
          ),
          // Recourses
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: recoursesListValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                // elevation: 16,
                style: const TextStyle(
                    color: mainFontColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  // setState(() {
                  //   recoursesListValue = value!;
                  // });
                },
                items:
                    recoursesList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          //Options
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: optionsListValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                // elevation: 16,
                style: const TextStyle(
                    color: mainFontColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    optionsListValue = value!;
                  });
                },
                items:
                    optionsList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          const Spacer(),
          // Sign Up
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // side: BorderSide(color: Colors.yellow, width: 5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          // Sign In
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // side: BorderSide(color: Colors.yellow, width: 5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          // For Employers
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                // side: BorderSide(color: Colors.yellow, width: 5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: const Text(
                'For Employers',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            width: context.screenWidth * .03,
          ),
        ],
      ),
    );
  }
}
