import 'package:flutter/material.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/chat_bot/chat_bot.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: AppColors.aColor.withOpacity(.8) ,
      toolbarHeight: 100,
      leading: IconButton(onPressed: (){
         Navigator.pop(context);
      },icon: Icon(Icons.arrow_back_ios),),
      title: Text(
        "Help",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.greenColor),
      ),
    ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: AppColors.aColor.withOpacity(.8)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
                children: [

          SizedBox(height: 100,),
          Center(
            child:
                Container(width: 190,
                    height: 190,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
                            child: Image.asset(AppImages.pic21),


                        ),

          ),
                  Text("Help Center" ,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greenColor)),
                  Text("If you want any help or", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greenColor)),
                  Text("faces any problems", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greenColor)),
                  Text("with our app,", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greenColor)),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" please go to", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greenColor)),
                      InkWell(onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChatBot()));
                      },
                        child: Text(" Chat bot", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor)),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  InkWell(onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChatBot()));
                  },
                      child: CustomBottom(name: ("To Chatbot"), width: 203, height: 37))




        
        
      ],
    ),)
    ,
    )
    );
  }
}
