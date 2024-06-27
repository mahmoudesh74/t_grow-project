import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/presentation/views/home2/view.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';
import '../../../app/app_images.dart';
import '../second_photo/view.dart';

class FirstPhoto extends StatefulWidget {
  const FirstPhoto({super.key});

  @override
  State<FirstPhoto> createState() => _FirstPhotoState();
}

class _FirstPhotoState extends State<FirstPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          height: 470.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.FirstPhoto,
                ),
                fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 300),
          child:  InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => const HomeScreen()));
            },
            child: Text(
              "111".tr(context),
                style: GoogleFonts.montserrat(color: Colors.black,
                    fontSize: 16,fontWeight: FontWeight.bold),
            ),
          )
        )
      ]),
      Expanded(
        child: Container(
          height: 280.h,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppColors.StartAndLogin),

          child:Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30),
              child: Row(children: [
                Text(
                             "15".tr(context),
                             style: GoogleFonts.montserrat(
                                 color: Colors.white, fontSize: 32.sp),
                           )
              ],),),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child:Row(children: [
              Text(
                          "16".tr(context),
                           style: GoogleFonts.montserrat(
                               color: Colors.white, fontSize: 24.sp),
                         )              ],),),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 50),
              child: Row(children: [
                Expanded(child:  Text(
                               "17".tr(context),
                               style: GoogleFonts.montserrat(
                                   color: Colors.white, fontSize: 14.sp),
                          ))
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: (){  Navigator.push(context, MaterialPageRoute(
                      builder: (builder)=>const SecondPhoto()
                  ));
                  },
                      child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.white,size: 50,))
                ],),
            )
          ],),

        ),
      )
    ]));
  }
}
