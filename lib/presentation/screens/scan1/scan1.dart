import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/scan/scan.dart';
import 'package:t_grow/presentation/screens/scan2/scan2.dart';
import 'package:t_grow/presentation/screens/scan_phone/scan_phone.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class Scan1 extends StatefulWidget {
  const Scan1({super.key});

  @override
  State<Scan1> createState() => _Scan1State();
}

class _Scan1State extends State<Scan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height - 120,
            child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Added resently",
                          style: TextStyle(
                              color: AppColors.darkColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListView.separated(
                          itemBuilder: (context, item) {
                            return Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    AppImages.pic15,
                                    width: 171,
                                    height: 171,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right:10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Text(
                                              "Late blight",
                                              style: TextStyle(
                                                  color: AppColors.clearGreenColor,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Is one of the most serious fungal diseases that can affect tomatoes and potatoes. Late blight is spread from infected transplants, volunteer potato or tomato plants, and certain weeds botanically related to tomatoes. Spores of this fungus can be airborne and travel great distances in storms.",
                                          style: TextStyle(fontSize: 11),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, item) {
                            return const SizedBox(
                              height: 16,
                            );
                          },
                          itemCount: 10),
                    ),
                  ),
                  SizedBox(height: 40,),
                  InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50))),
                              child: Center(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: InkWell(onTap: (){
                                                Navigator.pop(context);
                                          },
                                              child: Icon(Icons.close)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Add a plant to your history",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: AppColors.greenColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    InkWell(onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) => Scan2(source:ImageSource.camera ,),
                                        ),

                                      );
                                    },
                                      child: Container(
                                        width: 350,
                                        height: 53,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                color: AppColors.greenColor,
                                                style: BorderStyle.solid)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Image.asset(AppImages.pic10,width: 32,height: 32,),
                                              SizedBox(width: 40,),
                                              Text("Identify by camera",style: TextStyle(color: AppColors.greenColor,fontSize: 22),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(onTap: (){
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) => Scan2(source: ImageSource.gallery,),
                                        ),
                                            (route) => true,
                                      );
                                    },

                                      child: Container(

                                        width: 350,
                                        height: 53,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                color: AppColors.greenColor,
                                                style: BorderStyle.solid)),
                                        child:    Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Image.asset(AppImages.pic11,width: 32,height: 32,),
                                              SizedBox(width: 40,),
                                              Text("Identify by phone",style: TextStyle(color: AppColors.greenColor,fontSize: 22),)
                                            ],
                                          ),
                                        ),

                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CustomBottom(
                        name: "Add more",
                        width: 203,
                        height: 37,
                      )),
                ]
            ))
    );
  }
}

