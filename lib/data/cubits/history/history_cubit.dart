import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:t_grow/presentation/views/history/view.dart';

import '../../../domain/models/history_model/history_model.dart';
import '../../../domain/models/recently_model/recently_model.dart';
import '../../core/helpers/cache_helper.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryInitial());
  Future<void> get() async {
    var headers = {"Authorization": "Bearer ${CacheHelper2.getToken}"};
    FormData formData = FormData.fromMap({});
    var dio = Dio();
    var response = await dio.get(
      'https://graduation-project-api.runasp.net/Inspections/GetInspectionHistory',
      data: formData,
      options: Options(
        headers: headers,
      ),
    );

    print('*' * 20);

    if (response.statusCode == 200 || response.statusCode == 201) {
      List<HistoryModel> data = [];
      for (var i in response.data) {
        data.add(HistoryModel.fromJson(i));
      }
      print(data);
      // final model = RecentlyAdded.fromJson(response.data);
      // print(response.data);
      emit(GetHistorySuccess(model: data));
    } else {
      emit(GetHistoryError("error in History"));
      print("error in History");
    }
  }
}
