import 'package:flutter/material.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double width = 0.15;
    const double height = 0.05;
    final List<String> currencies = [
      "Food",
      "Transport",
      "Personal",
      "Shopping",
      "Medical",
      "Rent",
      "Movie",
      "Salary"
    ];
    String? currentSelectedValue;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: context.screenWidth * width,
              height: context.screenHeight * 0.05,
              child: const TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: textFieldBorderColor,
                    ),
                  ),
                  filled: true,
                  fillColor: backGroundColor,
                  hintText: 'What Are You Searching For?',
                  hintStyle: TextStyle(
                    color: textFieldTextColor,
                    fontSize: 14,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: textFieldBorderColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: context.screenWidth * width,
            height: context.screenHeight * 0.05,
            child: FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: backGroundColor,
                      errorStyle: const TextStyle(
                          color: Colors.redAccent, fontSize: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  isEmpty: currentSelectedValue == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Text(
                        'Select City',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      value: currentSelectedValue,
                      isDense: true,
                      onChanged: (value) {},
                      //(String newValue) {
                      //                       setState(() {
                      //                         _currentSelectedValue = newValue;
                      //                         state.didChange(newValue);
                      //                       });
                      //                     },
                      items: currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ).padding(
            const EdgeInsets.all(4),
          ),
          SizedBox(
            width: context.screenWidth * width,
            height: context.screenHeight * height,
            child: FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: backGroundColor,
                      errorStyle: const TextStyle(
                          color: Colors.redAccent, fontSize: 16.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  isEmpty: currentSelectedValue == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Text(
                        'Select Major',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      value: currentSelectedValue,
                      isDense: true,
                      onChanged: (value) {},
                      //(String newValue) {
                      //                       setState(() {
                      //                         _currentSelectedValue = newValue;
                      //                         state.didChange(newValue);
                      //                       });
                      //                     },
                      items: currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ).padding(
            const EdgeInsets.all(4),
          ),
          ElevatedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: primaryColor,
              fixedSize: Size(
                  context.screenWidth * 0.1, context.screenHeight * height),
              // foregroundColor: primaryColor,
              // side: BorderSide(color: Colors.yellow, width: 5),
              shape: const RoundedRectangleBorder(
                // side: BorderSide(
                //   color: primaryColor,
                // ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
            child: const Text(
              'Search',
              style: TextStyle(
                color: backGroundColor,
                fontSize: 14,
              ),
            ),
          ).padding(const EdgeInsets.all(4)),
        ],
      ),
    );
  }
}
