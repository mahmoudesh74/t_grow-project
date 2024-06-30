

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';


class Treatment extends StatefulWidget {
  const Treatment({super.key,
    required this.imageUrl,
    required this.treatmentContent,});
  final String? imageUrl;
  final String? treatmentContent;

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox(
        width: double.infinity,
        child: Column(children: [
          Stack(children: [
            Container(
              height: 470.h,

              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image:FileImage(
                        File(widget.imageUrl!),
                      ),
                      fit: BoxFit.fill),
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 300),
              child:
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child:Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: SizedBox(
                      width: 300,
                      child: Text(widget.treatmentContent!,
                      style: const TextStyle(overflow:TextOverflow.ellipsis,fontSize: 16, ),
                      maxLines: 20,

                      ),
                    ),)
              ],),
           ),
          //Spacer(),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 10),
          //   child: Row(mainAxisAlignment: MainAxisAlignment.center,
          //       children: [ InkWell(
          //         onTap: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
          //         },
          //         child: CustomBottom(
          //             name: "Start Tracking", width: 203.w, height: 37.h),
          //       ),]),
          // )

        ],
        ),
      ),

    );
  }
}



//
// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
// import 'package:t_grow/presentation/views/tracking1/view.dart';
//
// import '../../../app/app_colors.dart';
// import '../../../app/app_images.dart';
//
//
// class Treatment extends StatefulWidget {
//   Treatment({super.key,});
//
//  // String? imageUrl ;
//   //String? treatmentTitle ;
//   //String? treatmentContent ;
//   @override
//   State<Treatment> createState() => _TreatmentState();
// }
//
// class _TreatmentState extends State<Treatment> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100.h,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 282.w,
//                   height: 382.h,
//                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(AppImages.pic8),fit: BoxFit.scaleDown,),
//                       borderRadius: const BorderRadius.only(
//                           bottomLeft: Radius.circular(50))),
//
//                 ),
//               ],
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //widget.treatmentContent!
//                 Text("treatmentContent")
//               ],),
//             Row(children: [ InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
//               },
//               child: CustomBottom(
//                   name: "Start Tracking", width: 203.w, height: 37.h),
//             ),])
//
//           ],
//         ),
//       ),
//     );
//   }
// }



//
// import 'package:flutter/cupertino.dart';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:t_grow/data/core/local/app_local.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
//
// import '../../../app/app_colors.dart';
// import '../../../app/app_images.dart';
// import '../tracking1/view.dart';
//
// class Treatment extends StatefulWidget {
//    const Treatment({super.key,});
//
//
//   @override
//   State<Treatment> createState() => _TreatmentState();
// }
//
// class _TreatmentState extends State<Treatment> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100.h,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//         title: Text(
//           "65".tr(context),
//           style: TextStyle(
//               fontSize: 24.sp,
//               fontWeight: FontWeight.w600,
//               color: AppColors.greenColor),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.separated(
//                   itemBuilder: (context, item) {
//                     return Row(
//                       children: [
//                         Image.asset(
//                           AppImages.pic17,
//                           width: 78.w,
//                           height: 75.h,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Expanded(
//                             child: Text(
//                               "122".tr(context),
//                           style: TextStyle(
//                               fontSize: 12.sp, fontWeight: FontWeight.w400),
//                         )),
//                       ],
//                     );
//                   },
//                   separatorBuilder: (context, item) {
//                     return SizedBox(height: 30.h);
//                   },
//                   itemCount: 5),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 70),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
//                 },
//                 child: CustomBottom(
//                     name: "80".tr(context), width: 203.w, height: 37.h),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
