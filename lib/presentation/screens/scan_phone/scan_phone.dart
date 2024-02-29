import 'package:flutter/material.dart';
import 'package:t_grow/presentation/screens/gallary.dart';

import '../../../app/app_images.dart';
import '../../components/custom_bottom.dart';

class ScanPhone extends StatefulWidget {
  const ScanPhone({super.key});

  @override
  State<ScanPhone> createState() => _ScanPhoneState();
}

class _ScanPhoneState extends State<ScanPhone> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
            
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(AppImages.pic9,)),
            
            
              ],
            ),
          ),
          Container(height: 296,width: 358,
            decoration:BoxDecoration(borderRadius:BorderRadius.circular(50),color:Colors.white.withOpacity(.7)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.pic10,width: 32,height: 32,),
                        const SizedBox(width: 10,),
                        const Text("Place the plant in the frame.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Image.asset(AppImages.pic11,width: 32,height: 32,),
                        const SizedBox(width: 10,),
                        const Text("Make sure the image isn’t blurry.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Image.asset(AppImages.pic12,width: 32,height: 32,),
                        const SizedBox(width: 10,),
                        const Text("Scan only one plant at a time .",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Image.asset(AppImages.pic13,width: 32,height: 32,),
                        const SizedBox(width: 10,),
                        const Text("If the plant is big , scan its leaves.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                      ],
                    ),
                    const SizedBox(height: 20,),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Gallary()));
                    },
                        child: CustomBottom(name: "Got it", width: 203, height: 37)),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


