part of 'myads_bloc.dart';

abstract class MyadsState {}

class MyadsInitial extends MyadsState {}

class MyadsLoaded extends MyadsState {
  final AdvertisementModel advertisementModel;

  MyadsLoaded({required this.advertisementModel});
}

class MyadsLoading extends MyadsState {}

class MyadsError extends MyadsState {
  final String message;

  MyadsError({required this.message});
}
