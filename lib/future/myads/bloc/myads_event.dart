part of 'myads_bloc.dart';

@immutable
abstract class MyadsEvent {}

class GetMyadsEvent extends MyadsEvent {}

class EditMyadsEvent extends MyadsEvent {
  final AdvertisementModel advertisementModel;

  EditMyadsEvent({required this.advertisementModel});
}

class DeleteMyadsEvent extends MyadsEvent {
  final String id;

  DeleteMyadsEvent({required this.id});
}
