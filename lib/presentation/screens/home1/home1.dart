import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.pic1,
                    height: 240,
                    width: 386,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 249,
                  height: 217,
                  decoration:  BoxDecoration(
                      color: AppColors.begColor.withOpacity(.3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        topRight: Radius.circular(120),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      )),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        AppImages.pic5,
                        width: 64,
                        height: 64,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "AI algorithm",
                        style: TextStyle(
                            color: AppColors.darkColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            "Our algorithm recognizes plant and find diseases .It is also possible to give tips on how to take care of plant sbased on the huge plant database",
                            style: TextStyle(color: AppColors.darkColor,fontSize: 10,fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Recently added",
                      style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      AppImages.pic6,
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: Text(
                      "You haven’t added any plants yet .",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const SizedBox(height: 150),
                Image.asset(AppImages.pic2,width: 50,height: 60,),
                const SizedBox(height: 10),

                Image.asset(AppImages.pic3,width: 50,height: 60,),
                const SizedBox(height: 10),

                Image.asset(AppImages.pic4,width: 50,height: 60,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
