import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/data/core/local/app_local.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(onPressed: (){
          // Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios),),
        title:  Text(
          "52".tr(context),
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,



          children: [
            SizedBox(height: 50.h,),

            Align(alignment: AlignmentDirectional.center,

                child: Image.asset(AppImages.pic8,width: 260.w,height: 260.h,)),
           Text("112".tr(context),style: TextStyle(fontSize: 30.h,fontWeight: FontWeight.bold,color: AppColors.clearGreenColor),),
           Text("113".tr(context),style: TextStyle(fontSize: 17.sp),)
        ],),
      ),
    );
  }
}
