import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/helper_method.dart';
import 'package:t_grow/presentation/views/treatment/view.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../Upload_image_states.dart';
import '../upload_image_cubit.dart';


class Payment2 extends StatefulWidget {
  const Payment2({super.key, required this.imgURL, required this.content});

  final String imgURL,content;


  @override
  State<Payment2> createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.h,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Center(
            child: Text(
              "Payment Confirm",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greenColor),
            ),
          ),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.Sticker),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Thank you !',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Successful your payment',
                      style: TextStyle(
                          color: Colors.green[900],
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'check your email & track your product',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),

              // UploadImageCubit.get(context).getPlantData();
              InkWell(onTap: () {
                navigateTo(Treatment(
                    imageUrl:
                    UploadImageCubit.get(context).image, treatmentContent:UploadImageCubit.get(context).model!.treatmentContent,
                                           ));
              },
                  child: CustomBottom(name: "Done",
                    width: 203.w,
                    height: 37.h,
                    color: AppColors.clearGreenColor,)),
              // Padding(
              //   padding: const EdgeInsets.only(top: 130),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Expanded(
              //         child: BlocConsumer<UploadImageCubit, UploadImageState>(
              //             listener: (context, state) {
              //               if (state is ModelSuccess) {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (BuildContext context) => Treatment(
              //                           imageUrl:
              //                           UploadImageCubit.get(context).image,
              //                           treatmentContent:
              //                           state.aiModel.treatmentContent)),);}
              //             }, builder: (context, state) {
              //            }),
              //       ) ],
              //   ),
              // ),
            ],
          ),
        ));
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:t_grow/data/core/local/app_local.dart';
// import 'package:t_grow/presentation/components/custom_bottom.dart';
// import 'package:t_grow/presentation/views/treatment/view.dart';
// import '../../../app/app_colors.dart';
// import '../../../app/app_images.dart';
//
// class Payment2 extends StatefulWidget {
//    const Payment2({super.key});
//
//
//   @override
//   State<Payment2> createState() => _Payment2State();
// }
//
// class _Payment2State extends State<Payment2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 50),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.all(8.r),
//                         child: const Icon(Icons.arrow_back_ios),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 50.r
//                         ),
//                         child: Text(
//                           "75".tr(context),
//                           style: TextStyle(
//                               color: Colors.green[900],
//                               fontWeight: FontWeight.w700,
//                               fontSize: 24),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 130),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(AppImages.Sticker),
//                     ],
//                   ),
//                 ),
//                  Padding(
//                   padding: const EdgeInsets.only(top: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "76".tr(context),
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 16.sp),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "77".tr(context),
//                         style: TextStyle(
//                             color: Colors.green[900],
//                             fontWeight: FontWeight.w700,
//                             fontSize: 24.sp),
//                       )
//                     ],
//                   ),
//                 ),
//                  Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "78".tr(context),
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 16.sp),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 130),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       InkWell(onTap:(){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Treatment()));
//                 },
//                           child: CustomBottom(name: "79".tr(context), width:203.w, height: 37.h,color: AppColors.clearGreenColor,))
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//         ));}
// }