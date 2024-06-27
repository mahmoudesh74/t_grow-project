import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/payment2/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../view10.dart';

class Payment extends StatefulWidget {
  const Payment({super.key, required this.imgURL, required this.content});
  final String imgURL,content;

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                AppImages.esh,
              ),
              radius: 25,
            ),
          ),
        ],
        title: Center(
          child: Text(
            "66".tr(context),
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.greenColor),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "116".tr(context),
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "67".tr(context),
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor.withOpacity(.4)),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "68".tr(context),
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 78.w,
                          height: 78.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.pColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: SvgPicture.asset(
                                AppImages.V,
                                width: 26.w,
                                height: 21.h,
                              )),
                            ],
                          ),
                        ),
                        Text(
                          "69".tr(context),
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 78.w,
                          height: 78.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.pColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.C,
                                width: 35.w,
                                height: 35.h,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "70".tr(context),
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 78.w,
                          height: 78.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.pColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.P,
                                width: 30.w,
                                height: 30.h,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "71".tr(context),
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 78.w,
                          height: 78.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.pColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.G,
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "72".tr(context),
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  Text(
                    "68".tr(context),
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: AppColors.clearGreenColor,
                maxLines: 1,
                decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(AppImages.L),
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(children: [
                Expanded(
                  child: TextFormField(
                    cursorColor: AppColors.clearGreenColor,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      hintText: '  MM/VV',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: AppColors.clearGreenColor,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      hintText: '  CVV',
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "\$ 9999.00",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.greenColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                      "74".tr(context)),
                  const Spacer(),
                  Switch(
                      onChanged: (value) {
                        isSwitched = !isSwitched;
                        setState(() {});
                      },
                      value: isSwitched,
                      activeColor: Colors.white,
                      activeTrackColor: AppColors.clearGreenColor,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.black)
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Payment2(
                               content: widget.content,imgURL: widget.imgURL,
                                )));
                  },
                  child:  CustomBottom(
                    name: "66".tr(context),
                    width: 203,
                    height: 37,
                    color: AppColors.clearGreenColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
