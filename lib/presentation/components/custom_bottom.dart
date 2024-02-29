import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';

class CustomBottom extends StatelessWidget {
  String name;
  double width;
  double height;
   CustomBottom({super.key,required this.name,required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:BoxDecoration(color:AppColors.greenColor,borderRadius: BorderRadius.circular(20)),
      child:  Center(child: Text(name??"",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 16,color: AppColors.whiteColor),)),
    );
  }
}
