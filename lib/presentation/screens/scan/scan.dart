import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/scan2/scan2.dart';
import 'package:t_grow/presentation/screens/scan_phone/scan_phone.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                AppImages.pic8,
                width: 260,
                height: 260,
              )),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "You haven’t added any plants yet. ",
                style: TextStyle(fontSize: 22, color: AppColors.greenColor),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300,
                          decoration: const BoxDecoration(
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
                                    IconButton(onPressed: (){
                                      Navigator.of(context).pop();
                                    }, icon: Icon(Icons.close))
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
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => Scan2(source: ImageSource.camera,),
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
                                          Image.asset(
                                            AppImages.pic10,
                                            width: 32,
                                            height: 32,
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            "Identify by camera",
                                            style: TextStyle(
                                                color: AppColors.greenColor,
                                                fontSize: 22),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Scan2(source: ImageSource.gallery,),
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
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppImages.pic11,
                                            width: 32,
                                            height: 32,
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            "Identify by phone",
                                            style: TextStyle(
                                                color: AppColors.greenColor,
                                                fontSize: 22),
                                          )
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
                    name: "add a plant",
                    width: 300,
                    height: 50,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
