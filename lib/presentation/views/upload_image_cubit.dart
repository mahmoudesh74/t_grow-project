import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/data/core/helpers/cache_helper.dart';
import 'package:t_grow/data/core/helpers/dio_helper.dart';
import 'package:t_grow/domain/models/plant/plant_model.dart';
import 'package:t_grow/presentation/views/helper_method.dart';
import 'package:t_grow/presentation/views/plant/view.dart';

import 'Upload_image_states.dart';



class UploadImageCubit extends Cubit<UploadImageState>{
  UploadImageCubit():super(UploadImageInitial());
  static UploadImageCubit  get(context) {
    return BlocProvider.of(context);
  }

  AIModel ?model;
  String? image;
  final imagePicker = ImagePicker();
  uploadImage() async {
    emit(UploadImageLoadingState());
    try {
      var pickedImage =
      await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = pickedImage.path;
       await  getPlantData(File(image!));
        print( model?.treatmentTitle);

        navigateTo(Plant(imageUrl: image!, treatmentTitle:"${ model?.treatmentTitle}", treatmentContent: "${model?.treatmentContent}"));
      } else {}
      emit(UploadImageSuccessState());
    } catch (error) {
      emit(UploadImageErrorState(error.toString()));}}

  takePhoto() async {
        emit(TakePhotoLoading());
        try {
          var pickedImage =
          await imagePicker.pickImage(source: ImageSource.camera);
          if (pickedImage != null) {
            image = pickedImage.path;
          await  getPlantData(File(image!));
            navigateTo(Plant(imageUrl: image!, treatmentTitle:"${model?.treatmentTitle}", treatmentContent: "${model?.treatmentContent}"));
          } else {}
          emit(TakePhotoSuccess());
        } catch (error) {
          emit(TakePhotoError(error.toString()));
        }}

  Future<void> getPlantData(File file ) async {
    // final response= await DioHelper().sendData("Inspections/AddInspection",data: {
    //   "image":image
    // });
    print("Bearer ${CacheHelper2.getToken}");
    var headers = {
      'Authorization':"Bearer ${CacheHelper2.getToken}"
    };
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "image":
      await MultipartFile.fromFile(file.path, filename:fileName),
    });

    var dio = Dio();
    var response = await dio.request(
      'https://graduation-project-api.runasp.net/Inspections/AddInspection',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: formData,
    );

    if(response!.statusCode == 200){
      print('ahmeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeed');
      final model = AIModel.fromJson(response.data);
      this.model=model;
      print(response.data!);
      print("*"*50);
      print(model.treatmentContent);
      emit(UploadImageSuccessState() );
    }else {
      emit(UploadImageErrorState("errorMessage"));
    }
    }
}


