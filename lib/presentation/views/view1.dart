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
//    Treatment({super.key,});
//
//     String? imageUrl ;
//     String? treatmentTitle ;
//    String? treatmentContent ;
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
//             children: [
//         Container(
//         width: 282.w,
//           height: 382.h,
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(AppImages.pic8),fit: BoxFit.scaleDown,),
//               borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(50))),
//
//         ),
//           ],
//         ),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//               Text(widget.treatmentContent!)
//             ],),
//             Row(children: [ InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
//                 },
//                 child: CustomBottom(
//                     name: "Start Tracking", width: 203.w, height: 37.h),
//               ),])
//
//           ],
//         ),
//       ),
//     );
//   }
// }
