import 'package:flutter/material.dart';
import 'package:t_grow/presentation/screens/clear_notification/clear_notification.dart';
import 'package:t_grow/presentation/screens/profile/profile.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(onTap: (){ Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ClearNotification()),
                    );},
              child: const Text("Clear",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.clearGreenColor)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, item) {
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 10, right: 5, bottom: 5, left: 10),
                      width: 358,
                      height: 95,
                      decoration: BoxDecoration(
                        color: AppColors.fColor.withOpacity(.48),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.aColor.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: Image.asset(
                            AppImages.pic20,
                            fit: BoxFit.fill,
                          )),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional.topStart,
                                      child: Text(
                                        "Provide Lots of Light",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.clearGreenColor),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional.topStart,
                                      child: Text(
                                        "Water tomato plants deeply and regularly while the fruits are developing.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.greenColor),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, item) {
                    return const Divider(thickness: 1,
                      height: 10,
                      color: Colors.grey,
                    );
                  },
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
