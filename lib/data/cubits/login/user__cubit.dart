
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_grow/data/core/helpers/cache_helper.dart';
import 'package:t_grow/domain/models/login/model.dart';

import 'package:t_grow/presentation/views/login/view.dart';
import 'package:t_grow/data/cubits/login/state_cubit.dart';

import '../../../presentation/views/first_photo/view.dart';
import '../../../presentation/views/helper_method.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  final formKeyy = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  static UserCubit get(context) {
    return BlocProvider.of(context);
  }

  void login() async {
    {
      try {
        emit(LogninLoading());
        final response = await Dio().post(
          "https://graduation-project-api.runasp.net/Users/Login",
          data: {
            "Email": emailController.text,
            "Password": passwordController.text
          },
        );

        final model =LoginData.fromJson(response.data);
        model.isAuthenticated?navigateTo(FirstPhoto()):null;
        CacheHelper2.saveToken(model.token);
        print("email : ${emailController.text}");
        emit(LoginSuccess());
        print(response.data);
      } on DioException catch (e) {
        emit(LoginError(e.toString()));
        print(e.toString());
      }
    }
  }
}
