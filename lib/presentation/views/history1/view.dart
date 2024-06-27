import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/data/cubits/history/history_cubit.dart';
import 'package:t_grow/data/cubits/history/history_cubit.dart';

import '../home_screen/view.dart';

class History1 extends StatefulWidget {
  const History1({super.key});

  @override
  State<History1> createState() => _History1State();
}

class _History1State extends State<History1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "52".tr(context),
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Align(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<HistoryCubit, HistoryState>(
                    builder: (context, state) {
                  if (state is GetHistoryError) {
                    return Text("Failed");
                  } else if (state is GetHistorySuccess) {
                    return ListView.separated(
                      itemBuilder: (context, item) {
                        return Row(
                          children: [
                            Image.network(state.model[item].imageUrl!,
                                width: 80.w, height: 80.w),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: state.model.isEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 50.h,
                                          ),
                                          Align(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              child: Image.asset(
                                                AppImages.pic8,
                                                width: 260.w,
                                                height: 260.h,
                                              )),
                                          Text(
                                            "112".tr(context),
                                            style: TextStyle(
                                                fontSize: 30.h,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    AppColors.clearGreenColor),
                                          ),
                                          Text(
                                            "113".tr(context),
                                            style: TextStyle(fontSize: 17.sp),
                                          )
                                        ],
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.model[item].treatmentTitle!,
                                              style: TextStyle(
                                                  color:
                                                      AppColors.clearGreenColor,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          state.model[item].treatmentContent!,
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, item) {
                        return SizedBox(
                          height: 16.h,
                        );
                      },
                      itemCount: state.model.length,
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
