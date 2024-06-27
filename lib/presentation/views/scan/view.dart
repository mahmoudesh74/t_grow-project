// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:t_grow/app/app_colors.dart';
// import 'package:t_grow/app/app_images.dart';
// import 'package:t_grow/data/core/local/app_local.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
//
// import '../scan2/view.dart';
// import '../upload_image_cubit.dart';
//
// class Scan extends StatefulWidget {
//   const Scan({super.key});
//   late UploadImageCubit bloc;
//   @override
//   State<Scan> createState() => _ScanState();
// }
//
// class _ScanState extends State<Scan> {
//   void initState() {
//     bloc=BlocProvider.of(context);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Center(
//                   child: Image.asset(
//                 AppImages.pic8,
//                 width: 260.w,
//                 height: 260.h,
//               )),
//                SizedBox(
//                 height: 50.h,
//               ),
//                Text(
//                  "49".tr(context),
//                 style: TextStyle(fontSize: 22.sp, color: AppColors.greenColor),
//               ),
//                SizedBox(
//                 height: 60.h,
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
//                                     IconButton(onPressed: (){
//                                       Navigator.of(context).pop();
//                                     }, icon: const Icon(Icons.close))
//                                   ],
//                                 ),
//                                  Padding(
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
//                                  SizedBox(
//                                   height: 40.h,
//                                 ),
//                                 BlocBuilder(
//                                     bloc:bloc
//   builder: (context, state) {
//     return InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (BuildContext context) => Scan2(bloc.takephoto()),
//                                       ),
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
//                                            Text(
//                                              "58".tr(context),
//                                             style: TextStyle(
//                                                 color: AppColors.greenColor,
//                                                 fontSize: 22.sp),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 );
//   },
// ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.pushAndRemoveUntil(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (BuildContext context) =>
//                                             Scan2(imageUrl:
//                                             UploadImageCubit.get(context).image,),
//                                       ),
//                                       (route) => true,
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
//                                            Text(
//                                              "59".tr(context),
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
//                     name: "55".tr(context),
//                     width: 203.w,
//                     height: 37.h,
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
