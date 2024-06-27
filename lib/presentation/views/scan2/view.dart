import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/plant/view.dart';
import 'package:t_grow/presentation/views/upload_image_cubit.dart';

import '../../../app/app_images.dart';
import '../Upload_image_states.dart';


class Scan2 extends StatefulWidget {
  const Scan2(image, {super.key,

  });



  @override
  State<Scan2> createState() => _Scan2State();
}

class _Scan2State extends State<Scan2> {

  late UploadImageCubit bloc;
  @override
  void initState() {
    bloc=BlocProvider.of(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.pic9,
                    )),
              ],
            ),
          ),
          Container(
            height: 320.h,
            width: 358.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withOpacity(.7)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImages.pic10,
                            width: 32.w,
                            height: 32.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Place the plant in the frame.",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 25.h
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.pic11,
                            width: 32.w,
                            height: 32.h,
                          ),
                          SizedBox(
                              width: 10.w
                          ),
                          Text(
                            "Make sure the image isn’t blurry.",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 25.h
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.pic12,
                            width: 32.w,
                            height: 32.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text("Scan only one plant at a time .",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(
                          height: 25.h
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.pic13,
                            width: 32.w,
                            height: 32.h,
                          ),
                          SizedBox(
                              width: 10.w
                          ),
                          Text("If the plant is big , scan its leaves.",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(height: 10,),

                      BlocBuilder<UploadImageCubit,UploadImageState>(
                        //bloc: bloc,
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              bloc.uploadImage();
                              bloc.takePhoto();
                            },
                            child: CustomBottom(
                              name: "Got it", width: 107, height: 37,),
                          );
                        },
                      ),
                      // SizedBox(
                      //   height: 20.h,
                      // ),
                      // BlocConsumer<UploadImageCubit, UploadImageState>(
                      //   listener: (context, state) {
                      //     if (state is ModelSuccess) {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (BuildContext context) => Plant(
                      //                 imageUrl:
                      //                 UploadImageCubit.get(context).image,
                      //                 treatmentTitle:
                      //                 state.aiModel.treatmentTitle,
                      //                 treatmentContent:
                      //                 state.aiModel.treatmentContent)),);}
                      //   }, builder: (context, state) {
                      //   return  InkWell(
                      //       onTap: () {
                      //         // UploadImageCubit.get(context).getPlantData();
                      //         ;
                      //
                      //       }
                      //   );
                      //
                      // },
                      // ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }

// XFile? pickedImage;
//
// Future<void> _uploadImage() async {
//   final picker = ImagePicker();
//   pickedImage = await picker.pickImage(source: widget.source);
//   setState(() {});
//   if (pickedImage != null) {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => Plant(image: pickedImage!)));
//   }
// }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:t_grow/data/core/local/app_local.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
//
// import '../../../app/app_images.dart';
// import '../plant/view.dart';
//
// class Scan2 extends StatefulWidget {
//   Scan2({super.key, required this.source});
//
//   ImageSource source;
//
//   @override
//   State<Scan2> createState() => _Scan2State();
// }
//
// class _Scan2State extends State<Scan2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                     width: double.infinity,
//                     child: Image.asset(
//                       AppImages.pic9,
//                     )),
//               ],
//             ),
//           ),
//           Container(
//             height: 296.h,
//             width: 358.w,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.white.withOpacity(.7)),
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30, top: 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           AppImages.pic10,
//                           width: 32.w,
//                           height: 32.h,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Text(
//                           "60".tr(context),
//                           style: TextStyle(
//                               fontSize: 16.sp, fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 25.h,
//                     ),
//                     Row(
//                       children: [
//                         Image.asset(
//                           AppImages.pic11,
//                           width: 32.w,
//                           height: 32.h,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Text(
//                           "61".tr(context),
//                           style: TextStyle(
//                               fontSize: 16.sp, fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 25.h,
//                     ),
//                     Row(
//                       children: [
//                         Image.asset(
//                           AppImages.pic12,
//                           width: 32.w,
//                           height: 32.h,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Text("62".tr(context),
//                             style: TextStyle(
//                                 fontSize: 16.sp, fontWeight: FontWeight.w500))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 25.h,
//                     ),
//                     Row(
//                       children: [
//                         Image.asset(
//                           AppImages.pic13,
//                           width: 32.w,
//                           height: 32.h,
//                         ),
//                         SizedBox(
//                           width: 10.w,
//                         ),
//                         Text("63".tr(context),
//                             style: TextStyle(
//                                 fontSize: 16.sp, fontWeight: FontWeight.w500))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     InkWell(
//                         onTap: () async {
//                           await _uploadImage();
//                         },
//                         child: CustomBottom(
//                             name: "64".tr(context), width: 203.w, height: 37.h)),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   XFile? pickedImage;
//
//   Future<void> _uploadImage() async {
//     final picker = ImagePicker();
//     pickedImage = await picker.pickImage(source: widget.source);
//     setState(() {});
//     if (pickedImage != null) {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => Plant(image: pickedImage!)));
//     }
//   }
// }