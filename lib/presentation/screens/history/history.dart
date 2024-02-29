import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
          // Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "History",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,



          children: [
            SizedBox(height: 50,),

            Align(alignment: AlignmentDirectional.center,

                child: Image.asset(AppImages.pic8,width: 260,height: 260,)),
          Text("Nothing was found!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.clearGreenColor),),
          Text("You have not scan any plants yet.",style: TextStyle(fontSize: 17),)
        ],),
      ),
    );
  }
}
