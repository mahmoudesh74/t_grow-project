import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_grow/app/app_icons.dart';
import 'package:t_grow/presentation/screens/about/about.dart';
import 'package:t_grow/presentation/screens/help/help.dart';
import 'package:t_grow/presentation/screens/home1/home1.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';
import 'package:t_grow/presentation/screens/logout/logout.dart';
import 'package:t_grow/presentation/screens/notification/notification_screen.dart';


import 'package:flutter/material.dart';
import 'package:t_grow/app/app_images.dart';
import '../../../app/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },icon: Icon(Icons.arrow_back_ios),),
        title: const Text(
          "profile",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Container(
              width: 358,
              height: 75,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      stops: [.3,3],


                      colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                  color: AppColors.GColor,
                  borderRadius: BorderRadius.circular(50)),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      AppImages.pic19,
                    ),
                    radius: 37,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Text(
                                "Rachel",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.greenColor),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Text(
                                "Last sync 5/5/22",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.greenColor.withOpacity(.4)),
                              ),
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Preferences",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(onTap: (){



            },
              child: Container(
                width: 358,
                height: 75,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [.3,3],

                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: AppColors.greenColor,
                        size: 26,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Language",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
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
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
            },
              child: Container(
                width: 358,
                height: 75,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [.3,3],

                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: AppColors.greenColor,
                        size: 26,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Notification",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
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
            const SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Help()));
            },
              child: Container(
                width: 358,
                height: 75,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [.3,3],

                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help,
                        color: AppColors.greenColor,
                        size: 26,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Help",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
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
            const SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
            },
              child: Container(
                width: 358,
                height: 75,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        stops: [.3,3],

                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                     Image.asset(AppImages.about,
                        color: AppColors.greenColor,
                       width: 26,
                       height: 26,

                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 16,
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
            const SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogOut()));
            },
              child: Container(
                width: 358,
                height: 75,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        stops: [.3,3],
                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child:  const Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: AppColors.greenColor,
                      size: 26,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Log out",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greenColor),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.greenColor,
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
