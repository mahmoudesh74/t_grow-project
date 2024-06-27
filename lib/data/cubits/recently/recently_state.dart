part of 'recently_cubit.dart';

abstract class RecentlyState {}

class RecentlyInitial extends RecentlyState {}
class GetRecentlyLoading extends RecentlyState{}
class GetRecentlySuccess extends RecentlyState{
  List<RecentlyAdded> model;

  GetRecentlySuccess({required this.model});
}
class GetRecentlyError extends RecentlyState{
  final String error;
  GetRecentlyError(this.error);
}
