import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/plant/plant.dart';
import 'package:t_grow/presentation/screens/scan3/scan3.dart';

import '../../../app/app_images.dart';

class Scan2 extends StatefulWidget {
   Scan2({super.key,required this.source});
  ImageSource source;

  @override
  State<Scan2> createState() => _Scan2State();
}

class _Scan2State extends State<Scan2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                InkWell(onTap: ()async{
                  await _uploadImage();
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
  XFile? pickedImage;
  Future<void> _uploadImage() async {
    final picker = ImagePicker();
     pickedImage = await picker.pickImage(source: widget.source);
     setState(() {

     });
 if(pickedImage!=null){
   Navigator.push(context,
       MaterialPageRoute(builder: (context) => Plant(image: pickedImage!)));
 }

    }
}
