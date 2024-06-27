import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/data/cubits/lang/lang_cubit.dart';
import 'package:t_grow/presentation/views/clear_notification/view.dart';

import '../../../app/app_colors.dart';
import '../../../data/cubits/lang/lang_state.dart';
import '../../components/custom_container.dart';
import '../about/view.dart';
import '../help/view.dart';
import '../home_screen/view.dart';
import '../logout/view.dart';
import '../notification/view.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        ProfileMain(controller: controller),
        NotificationScreen(
          controller: controller,
        ),
        ClearNotification(
          controller: controller,
        ),
      ],
    );
  }
}

class ProfileMain extends StatefulWidget {
  ProfileMain({super.key, required this.controller});

  PageController? controller;

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "88".tr(context),
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 358.w,
                height: 75.h,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        stops: [.3, 3],
                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        AppImages.esh,
                      ),
                      radius: 37,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  "116".tr(context),
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.greenColor),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  "89".tr(context),
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                      AppColors.greenColor.withOpacity(.4)),
                                ),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "90".tr(context),
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greenColor),
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20, left: 20),
                                  child: Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child:
                                          const Icon(Icons.arrow_back_ios)),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "91".tr(context),
                                        style: TextStyle(
                                            color: AppColors.greenColor,
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, right: 50),
                                    child: Text(
                                      "96".tr(context),
                                      style: TextStyle(
                                          color: AppColors.greenColor
                                              .withOpacity(.61),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Container(
                                  width: 266.w,
                                  height: 226.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.lColor,
                                      borderRadius: BorderRadius.circular(24)),
                                  child: BlocBuilder<LangCubit, LangState>(
  builder: (context, state) {
    var bloc = BlocProvider.of<LangCubit>(context);
    return Column(
                                    children: [
                                      InkWell(
                                        onTap:(){
                                          bloc.changeLang('ar');
                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Text("117".tr(context),style: TextStyle(color: AppColors.greenColor,fontSize:20 ),),
                                              ),
                                            ],
                                          )),
                                      SizedBox(height: 2,),
                                      Text("117".tr(context),style: TextStyle(color: AppColors.clearGreenColor),),
                                      SizedBox(height: 10,),
                                      Text("118".tr(context),style: TextStyle(color: AppColors.clearGreenColor),)

                                    ],
                                  );
  },
)
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child:  CustomContainer(
                    icon: Icons.language,
                    name: "91".tr(context),
                  )),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  widget.controller!.animateToPage(1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
                child:  CustomContainer(
                  name: "92".tr(context),
                  icon: Icons.notifications,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Help()));
                  },
                  child:  CustomContainer(
                    icon: Icons.help,
                    name: "93".tr(context),
                  )),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const About()));
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          AppImages.about,
                          color: AppColors.greenColor,
                          width: 26.w,
                          height: 26.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "94".tr(context),
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greenColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LogOut()));
                  },
                  child:  CustomContainer(
                    name: "95".tr(context),
                    icon: Icons.logout,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}