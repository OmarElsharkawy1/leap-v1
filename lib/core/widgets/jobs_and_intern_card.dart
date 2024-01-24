import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
class JobsAndInternCard extends StatefulWidget {
  const JobsAndInternCard({super.key});

  @override
  State<JobsAndInternCard> createState() => _JobsAndInternCardState();
}

class _JobsAndInternCardState extends State<JobsAndInternCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHeight!*.27,
      width: AppSize.screenWidth!*.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.defaultSize!),
        color: AppColors.containerColor,


      ),
      child: Padding(
        padding:   EdgeInsets.all(AppSize.defaultSize!*2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: AppColors.black,
            height: AppSize.defaultSize!*8,
            width: AppSize.defaultSize!*8,
            ),
            SizedBox(width:AppSize.defaultSize! ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TeamLead Engineer',style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: AppSize.defaultSize!*1.8,
                  fontWeight: FontWeight.w700
                ),),
                Row(
                  children: [
                    Text(
                      'Posted 2 Days Ago ' ,
                      style:   TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w600,
                        fontSize: AppSize.defaultSize!*1.2
                      ),
                    ),
                       Text(
                      'Full Time',
                         style:   TextStyle(
                             color: AppColors.black,
                             fontWeight: FontWeight.w600,
                             fontSize: AppSize.defaultSize!*1.2
                         ),
                    ),


                  ],
                ),

                SizedBox(height: AppSize.defaultSize!,),
                rowWithIcon(text: 'Cairo, Egypt', icon: AssetPath.location),
                SizedBox(height: AppSize.defaultSize!,),
                rowWithIcon(text: '.NET Developer', icon: AssetPath.location),
                SizedBox(height: AppSize.defaultSize!,),
                Text(
                  '12000 EGP - 15000 EGP',
                  style:   TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: AppSize.defaultSize!*1.2
                  ),
                ),
                SizedBox(height: AppSize.defaultSize!*2,),
                InkWell(
                  onTap: () {},


                  child:   Container(
                      height: AppSize.defaultSize!*3.5,
                      width: AppSize.screenWidth!*.55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppSize.defaultSize!*.5),
                          border: Border.all(color: AppColors.primaryColor)
                      ),

                      child: Center(child: Text('Apply Now',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: AppSize.defaultSize!*1.4,

                      ),),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget rowWithIcon({required String text,required String icon}){
    return Row(
      children: [
        Image.asset(icon),
        SizedBox(width: AppSize.defaultSize!,),
        Text(
         text,
          style:   TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w600,
              fontSize: AppSize.defaultSize!*1.2
          ),
        ),
      ],
    );
  }
}
