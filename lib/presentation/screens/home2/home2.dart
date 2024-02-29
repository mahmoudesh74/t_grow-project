
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
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
                  decoration: BoxDecoration(
                      color: AppColors.begColor.withOpacity(.3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(120),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
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
                            style: TextStyle(
                                color: AppColors.darkColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400)),
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
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Recently added",
                      style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView.separated(scrollDirection: Axis.horizontal,
                      itemBuilder: (context, item) {
                        return   Container(
                          width: 244,
                          height: 105,
                          // padding: EdgeInsets.only(top: ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.pic7,
                                width: 80,
                                height: 80,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                               Expanded(
                                 child: SizedBox(
                                   height: 105,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                                   Text(
                                                       "Late blight",
                                                       style: TextStyle(
                                                           color: AppColors.clearGreenColor,
                                                           fontSize: 17,
                                                           fontWeight: FontWeight.bold),
                                                     ),
                                 
                                        Text(
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                           "Is one of the most serious fungal diseases that can affect tomatoes and potatoes. Late blight is spread from infected transplants, volunteer potato or tomato plants, and certain weeds botanically related to tomatoes. Spores of this fungus can be airborne and travel great distances in storms.",
                                           style: TextStyle(fontSize: 11),
                                         ),
                                 
                                     ],
                                   ),
                                 ),
                               ),

                            ],
                          ),
                        );

                      },
                      separatorBuilder: (context, item) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: 10),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const SizedBox(height: 150),
                Image.asset(
                  AppImages.pic2,
                  width: 50,
                  height: 60,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  AppImages.pic3,
                  width: 50,
                  height: 60,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  AppImages.pic4,
                  width: 50,
                  height: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
