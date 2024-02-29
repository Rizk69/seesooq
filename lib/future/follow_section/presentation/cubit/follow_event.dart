part of 'follow_bloc.dart';

@immutable
abstract class FollowEvent {}

class GetFollowersEvent implements FollowEvent{}
class GetFollowingEvent implements FollowEvent{}
class AddFollowEvent implements FollowEvent{}
class RemoveFollowersEvent implements FollowEvent{}
class RemoveFollowingEvent implements FollowEvent{}