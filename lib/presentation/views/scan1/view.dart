import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/data/cubits/plant/Upload_image_states.dart';
import 'package:t_grow/presentation/views/plant/view.dart';
import 'package:t_grow/presentation/views/tracking1/view.dart';
import 'package:t_grow/presentation/views/tracking2/view.dart';
import 'package:t_grow/presentation/views/treatment/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../../data/cubits/recently/recently_cubit.dart';
import '../scan2/view.dart';
import '../../../data/cubits/plant/upload_image_cubit.dart';

class Scan1 extends StatefulWidget {
  Scan1();

  // XFile? pickedImage;
  // ImageSource source;

  @override
  State<Scan1> createState() => _Scan1State();
}

class _Scan1State extends State<Scan1> {
  late UploadImageCubit bloc;

  @override
  void initState() {
    bloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 250.h,
            child: Column(children: [
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "48".tr(context),
                      style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<RecentlyCubit, RecentlyState>(
                  // bloc: RecentlyCubit,
                  builder: (context, state) {
                    if (state is GetRecentlyError) {
                      return Text("Failed");
                    } else if (state is GetRecentlySuccess) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.separated(
                          itemBuilder: (context, item) {
                            return SizedBox(
                              width: 244.w,
                              height: 105.h,
                              // padding: EdgeInsets.only(top: ),
                              child: state.model.isEmpty
                                  ? Center(
                                      child: SingleChildScrollView(
                                          child: Column(children: [
                                      Center(
                                          child: Image.asset(
                                        AppImages.pic8,
                                        width: 260.w,
                                        height: 260.h,
                                      )),
                                      SizedBox(
                                        height: 50.h,
                                      ),
                                      Text(
                                        "49".tr(context),
                                        style: TextStyle(
                                            fontSize: 22.sp,
                                            color: AppColors.greenColor),
                                      ),
                                    ])))
                                  : Row(
                                      children: [
                                        Image.network(
                                            state.model[item].imageUrl,
                                            width: 80.w,
                                            height: 80.w),
                                        SizedBox(width: 10.w),
                                        Expanded(
                                          child: SizedBox(
                                            height: 105.h,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.model[item]
                                                      .treatmentTitle,
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .clearGreenColor,
                                                      fontSize: 17.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  state.model[item]
                                                      .treatmentContent,
                                                  style: TextStyle(
                                                      fontSize: 11.sp),
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
                            return SizedBox(width: 10.w);
                          },
                          itemCount: state.model.length,
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300.h,
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
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(Icons.close)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "57".tr(context),
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: AppColors.greenColor),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                BlocBuilder<UploadImageCubit,UploadImageState>(
                                  bloc: bloc,
                                  builder: (context, state) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Scan2(
                                              bloc.takePhoto(),
                                            ),
                                          ),
                                          (route) => true,
                                        );
                                      },
                                      child: Container(
                                        width: 350.w,
                                        height: 53.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: AppColors.greenColor,
                                                style: BorderStyle.solid)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                AppImages.pic10,
                                                width: 32.w,
                                                height: 32.h,
                                              ),
                                              SizedBox(
                                                width: 40.w,
                                              ),
                                              Text(
                                                "58".tr(context),
                                                style: TextStyle(
                                                    color: AppColors.greenColor,
                                                    fontSize: 22.sp),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                BlocBuilder<UploadImageCubit,UploadImageState>(
                                  bloc: bloc,
                                  builder: (context, state) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Scan2(bloc.uploadImage()),
                                          ),
                                          (route) => true,
                                        );
                                      },
                                      child: Container(
                                        width: 350.w,
                                        height: 53.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: AppColors.greenColor,
                                                style: BorderStyle.solid)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                AppImages.pic11,
                                                width: 32.w,
                                                height: 32.h,
                                              ),
                                              SizedBox(
                                                width: 40.w,
                                              ),
                                              Text(
                                                "59".tr(context),
                                                style: TextStyle(
                                                    color: AppColors.greenColor,
                                                    fontSize: 22.sp),
                                              )
                                            ],
                                          ),
                                          //Row(
                                          //   children: [
                                          //     Image.asset(
                                          //       AppImages.pic11,
                                          //       width: 32.w,
                                          //       height: 32.h,
                                          //     ),
                                          //     SizedBox(
                                          //       width: 40.w,
                                          //     ),
                                          //     Text(
                                          //       "59".tr(context),
                                          //       style: TextStyle(
                                          //           color: AppColors.greenColor,
                                          //           fontSize: 22.sp),
                                          //     )
                                          //   ],
                                          // ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CustomBottom(
                    name: "56".tr(context),
                    width: 203.w,
                    height: 37.h,
                  )),
            ])));
  }
// }import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:t_grow/data/core/local/app_local.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
// import 'package:t_grow/presentation/views/plant/view.dart';
// import 'package:t_grow/presentation/views/tracking1/view.dart';
// import 'package:t_grow/presentation/views/tracking2/view.dart';
// import 'package:t_grow/presentation/views/treatment/view.dart';
//
//
// import '../../../app/app_colors.dart';
// import '../../../app/app_images.dart';
// import '../scan2/view.dart';
// import '../upload_image_cubit.dart';
//
// class Scan1 extends StatefulWidget {
//    Scan1({super.key,  required this.source,});
//
//    //XFile? pickedImage;
//    ImageSource source;
//
//   @override
//   State<Scan1> createState() => _Scan1State();
// }
//
// class _Scan1State extends State<Scan1> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SizedBox(
//             width: double.infinity,
//             height: MediaQuery
//                 .of(context)
//                 .size
//                 .height - 120.h,
//             child: Column(children: [
//               SizedBox(
//                 height: 40.h,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Row(
//                   children: [
//                     Text(
//                       "48".tr(context),
//                       style: TextStyle(
//                           color: AppColors.darkColor,
//                           fontSize: 30.sp,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: ListView.separated(
//                       itemBuilder: (context, item) {
//                         return Row(
//                           children: [
//                             Image.asset(
//                               AppImages.pic15,
//                               width: 171.w,
//                               height: 171.h,
//                               fit: BoxFit.fill,
//                             ),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(right: 10),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Late blight",
//                                           style: TextStyle(
//                                               color: AppColors.clearGreenColor,
//                                               fontSize: 17.sp,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ],
//                                     ),
//                                     Text(
//                                       "Is one of the most serious fungal diseases that can affect tomatoes and potatoes. Late blight is spread from infected transplants, volunteer potato or tomato plants, and certain weeds botanically related to tomatoes. Spores of this fungus can be airborne and travel great distances in storms.",
//                                       style: TextStyle(fontSize: 11.sp),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                       separatorBuilder: (context, item) {
//                         return SizedBox(
//                           height: 16.h,
//                         );
//                       },
//                       itemCount: 10),
//                 ),
//               ),
//               SizedBox(
//                 height: 40.h,
//               ),
//               InkWell(
//                   onTap: () {
//                     showModalBottomSheet<void>(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return Container(
//                           height: 300.h,
//                           decoration: const BoxDecoration(
//                               color: AppColors.whiteColor,
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(50),
//                                   topLeft: Radius.circular(50))),
//                           child: Center(
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(20),
//                                       child: InkWell(
//                                           onTap: () {
//                                             Navigator.pop(context);
//                                           },
//                                           child: const Icon(Icons.close)),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 20),
//                                   child: Row(
//                                     children: [
//                                       Text(
//                                         "57".tr(context),
//                                         style: TextStyle(
//                                             fontSize: 20.sp,
//                                             color: AppColors.greenColor),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 40.h,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.pushAndRemoveUntil(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (BuildContext context) =>
//                                             Scan2(
//                                               imageUrl:
//                                               UploadImageCubit.get(context).image,
//                                             ),
//                                       ),
//                                           (route) => true,
//                                     );
//                                   },
//                                   child: Container(
//                                     width: 350.w,
//                                     height: 53.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(50),
//                                         border: Border.all(
//                                             color: AppColors.greenColor,
//                                             style: BorderStyle.solid)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(left: 20),
//                                       child: Row(
//                                         children: [
//                                           Image.asset(
//                                             AppImages.pic10,
//                                             width: 32.w,
//                                             height: 32.h,
//                                           ),
//                                           SizedBox(
//                                             width: 40.w,
//                                           ),
//                                           Text(
//                                             "58".tr(context),
//                                             style: TextStyle(
//                                                 color: AppColors.greenColor,
//                                                 fontSize: 22.sp),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.pushAndRemoveUntil(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (BuildContext context) =>
//                                             Scan2(
//                                                 imageUrl:
//                                                 UploadImageCubit.get(context).image,
//                                             ),
//                                       ),
//                                           (route) => true,
//                                     );
//                                   },
//                                   child: Container(
//                                     width: 350.w,
//                                     height: 53.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(50),
//                                         border: Border.all(
//                                             color: AppColors.greenColor,
//                                             style: BorderStyle.solid)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(left: 20),
//                                       child: Row(
//                                         children: [
//                                           Image.asset(
//                                             AppImages.pic11,
//                                             width: 32.w,
//                                             height: 32.h,
//                                           ),
//                                           SizedBox(
//                                             width: 40.w,
//                                           ),
//                                           Text(
//                                             "59".tr(context),
//                                             style: TextStyle(
//                                                 color: AppColors.greenColor,
//                                                 fontSize: 22.sp),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                   child: CustomBottom(
//                     name: "56".tr(context),
//                     width: 203.w,
//                     height: 37.h,
//                   )),
//             ])));
//   }
// }
}
