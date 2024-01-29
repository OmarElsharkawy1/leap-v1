import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
class UploadCV extends StatefulWidget {
  const UploadCV({super.key});

  @override
  State<UploadCV> createState() => _UploadCVState();
}

class _UploadCVState extends State<UploadCV> {
  FilePickerResult? result;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: ()async{
        result = await FilePicker.platform.pickFiles();

        if (result != null) {
          File file = File(result?.files.single.path??"");
        } else {
          print("No file selected");
        }
      },
      child: Container(
        height: AppSize.defaultSize! * 14.3,
        decoration: BoxDecoration(
          color: AppColors.borderColor,
          borderRadius: BorderRadius.circular(AppSize.defaultSize!),
         ),
        child: Center(
          child: Text(
            result!.files.isNotEmpty?  result!.files[0].name.toString()    :StringManager.tabToUploadCV.tr(),
            textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: AppSize.defaultSize! * 1.5,
         ),
          ),
        ),
      ),
    );
  }
}
