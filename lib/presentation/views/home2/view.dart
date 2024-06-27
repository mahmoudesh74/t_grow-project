import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/data/cubits/recently/recently_cubit.dart';
import 'package:t_grow/domain/models/recently_model/recently_model.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    decoration:const BoxDecoration(
                      borderRadius:BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))
                    ),
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.agri,
                      height: 240.h,
                      width: 390.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 249.w,
                    height: 217.h,
                    decoration: BoxDecoration(
                        color: AppColors.begColor.withOpacity(.3),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(120),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset(
                          AppImages.pic5,
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "43".tr(context),
                          style: TextStyle(
                              color: AppColors.darkColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("44".tr(context),
                              style: TextStyle(
                                  color: AppColors.darkColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "48".tr(context),
                        style: TextStyle(
                            color: AppColors.darkColor,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: BlocBuilder<RecentlyCubit,RecentlyState>(
                      // bloc: RecentlyCubit,
                      builder: (context, state) {
                       if(state is GetRecentlyError){
                         return Text("Failed");
                       }else if (state is GetRecentlySuccess){
                         return ListView.separated(
                             scrollDirection: Axis.horizontal,

                             itemBuilder: (context, item) {
                               return SizedBox(
                                 width: 244.w,
                                 height: 105.h,
                                 // padding: EdgeInsets.only(top: ),
                                 child:state.model.isEmpty? Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 20),
                                       child: Image.asset(
                                         AppImages.pic6,
                                         width: 80.w,
                                         height: 80.h,
                                       ),
                                     ),
                                     const SizedBox(
                                       width: 20,
                                     ),
                                     Expanded(
                                       child: Text(
                                         "49".tr(context),
                                         style: const TextStyle(color: Colors.grey),
                                       ),
                                     ),
                                   ],): Row(
                                   children: [
                                     Image.network(
                                         state.model[item].imageUrl, width: 80.w, height: 80.w),
                                     SizedBox(width: 10.w),
                                     Expanded(
                                       child: SizedBox(
                                         height: 105.h,
                                         child: Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               state.model[item].treatmentTitle,
                                               style: TextStyle(
                                                   color:
                                                   AppColors.clearGreenColor,
                                                   fontSize: 17.sp,
                                                   fontWeight: FontWeight.bold),
                                             ),
                                             Text(
                                               maxLines: 3,
                                               overflow: TextOverflow.ellipsis,
                                               state.model[item].treatmentContent,
                                               style: TextStyle(fontSize: 11.sp),
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
                             itemCount: state.model.length,);
                       }
                       else{
                         return Center(child: CircularProgressIndicator(),);
                       }

                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  SizedBox(height: 200.h),
                  // Image.asset(
                  //   AppImages.pic2,
                  //   width: 50.w,
                  //   height: 60.h,
                  // ),
                  SizedBox(height: 10.h),
                  Image.asset(
                    AppImages.frame,
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(height: 10.h),
                  // Image.asset(
                  //   AppImages.pic4,
                  //   width: 50.w,
                  //   height: 60.h,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
