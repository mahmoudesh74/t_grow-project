import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
           Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "About",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 30,left: 15),
              child: Container(
                width: 356,
                height: 593,
                decoration: BoxDecoration(
                    color: AppColors.aColor.withOpacity(.5),
                    borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.aColor.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        AppImages.pic22,
                        width: 130,
                        height: 47,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302,
                        height: 75,
                        decoration: BoxDecoration(color: AppColors.bColor,borderRadius: 
                        BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Tgrow is the usable and great plant app that helps you to follow plant growth\n process.", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              )),
                        ),

                      ),

                    ), Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302,
                        height: 75,
                        decoration: BoxDecoration(color: AppColors.bColor,borderRadius:
                        BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("               You can scan the plant, identify\n disease, and know the treatment that you can do to your plant.", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302,
                        height: 81,
                        decoration: BoxDecoration(color: AppColors.bColor,borderRadius:
                        BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("          To help you with topics that will be vague for you. Tgrow added chatbot that you can use it freely.", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302,
                        height: 81,
                        decoration: BoxDecoration(color: AppColors.bColor,borderRadius:
                        BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("                Also we added contacts of the experts who can help you in your inquiry.", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302,
                        height: 81,
                        decoration: BoxDecoration(color: AppColors.bColor,borderRadius:
                        BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("              Weekly Tips which added automatically to follow how you can grow healthy and freshness plant ", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
