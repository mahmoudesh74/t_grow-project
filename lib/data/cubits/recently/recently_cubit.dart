import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_grow/data/core/helpers/cache_helper.dart';
import 'package:t_grow/domain/models/recently_model/recently_model.dart';

part 'recently_state.dart';

class RecentlyCubit extends Cubit<RecentlyState> {
  RecentlyCubit() : super(RecentlyInitial());

  Future<void> getRecently() async {
    var headers = {"Authorization": "Bearer ${CacheHelper2.getToken}"};
    FormData formData = FormData.fromMap({});
    var dio = Dio();
    var response = await dio.get(
      'https://graduation-project-api.runasp.net/Inspections/GetRecentlyInspection',
      data: formData,
      options: Options(
        headers: headers,
      ),
    );
    print('*' * 20);

    if (response.statusCode == 200 || response.statusCode == 201) {
      List<RecentlyAdded> data = [];
      for (var i in response.data) {
        data.add(RecentlyAdded.fromJson(i));
      }
      print(data);

      emit(GetRecentlySuccess(model: data));
    } else {
      emit(GetRecentlyError("error in recently added"));
      print("error in recently added");
    }
  }
}
