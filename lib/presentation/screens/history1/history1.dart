import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';

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
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },icon: const Icon(Icons.arrow_back_ios),),
        title: const Text(
          "History",
          style: TextStyle(
              fontSize: 24,
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
                child: ListView.separated(
                    itemBuilder: (context, item) {
                      return Row(
                        children: [
                          Image.asset(
                            AppImages.pic7,
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Image",
                                            style: TextStyle(
                                                color: AppColors.clearGreenColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                            
                                     SizedBox(height: 5),
                                    Text(
                                        "This plant suffers from late blight which infect many crops of tomato. It appears as  small dead spots, lightto dark green, somewhat circular and water-soaked ....",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    
                                  ],
                                ),
                          ),

                          
                        ],
                      );
                    },
                    separatorBuilder: (context, item) {
                      return const SizedBox(
                        height: 16,
                      );
                    },
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
