import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../home_screen/home_screen.dart';

class Treatment extends StatefulWidget {
  const Treatment({super.key});

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        },icon: const Icon(Icons.arrow_back_ios),),
        title: const Text(
          "profile",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, item) {
                    return Row(
                      children: [
                        Image.asset(
                          AppImages.pic17,
                          width: 78,
                          height: 75,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: Text(
                          "You should spray water which spider exists.",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )),
                      ],
                    );
                  },
                  separatorBuilder: (context, item) {
                    return const SizedBox(
                      height: 50,
                    );
                  },
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
