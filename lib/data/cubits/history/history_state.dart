part of 'history_cubit.dart';

@immutable
abstract class HistoryState {}

class HistoryInitial extends HistoryState {}
class GetHistoryLoading extends HistoryState{}
class GetHistorySuccess extends HistoryState{
 List <HistoryModel> model;

  GetHistorySuccess({required this.model});
}


class GetHistoryError extends HistoryState{
  final String error;
  GetHistoryError(this.error);
}