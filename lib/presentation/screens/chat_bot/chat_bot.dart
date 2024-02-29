import 'package:flutter/material.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';

import '../../../app/app_colors.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();

        },icon: const Icon(Icons.arrow_back_ios),),
        title: const Text(
          "Chat bot",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 150,),
            const Text(
              "Hello i am your virtual guide",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.greenColor)),
              const Text(
              "and will help you",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.greenColor)),
                const Text(
              "in planting",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.greenColor),

            ),
            const SizedBox(height: 10,),
            Center(child: Image.asset(AppImages.pic18,width: 128,height: 128,)),
            const SizedBox(height: 50,),
            CustomBottom(name: "start", width: 203, height: 37)



          ],
        ),
      ),
    );
  }
}
