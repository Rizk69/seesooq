import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/loadin_app.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/follow_section/data/model/followers_model.dart';
import 'package:opensooq/future/follow_section/data/repositories/follow_repository.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_event.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_state.dart';
import 'package:rxdart/rxdart.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  FollowBloc() : super(const FollowState()) {
    on<FollowEvent>((event, emit) async {
      await event.when(
        getFollowers: () => _getFollowers(emit),
        getFollowing: () => _getFollowing(emit),
        addFollow: (id) => _addFollow(emit, id: id),
        removeFollowers: (id) => _removeFollowers(emit, id: id),
        removeFollowing: (id) => _removeFollowing(emit, id: id),
        searchFollowers: (query) => _searchFollowers(emit, query: query),
      );
    });
  }
  final FollowRepository followRepository = di.sl();
  static FollowBloc get(context) => BlocProvider.of(context);

  Future<void> _getFollowers(Emitter<FollowState> emit) async {
    emit(state.copyWith(followersStatus: FollowersStatus.loading));
    final result = await followRepository.getFollowers();
    result.fold((error) {
      print('error ${error.message}');
      emit(state.copyWith(followersStatus: FollowersStatus.error));
    }, (followers) => emit(state.copyWith(followersStatus: FollowersStatus.loaded, followersUsers: followers)));
  }

  Future<void> _getFollowing(Emitter<FollowState> emit) async {
    emit(state.copyWith(followingStatus: FollowingStatus.loading));
    final result = await followRepository.getFollowings();
    result.fold((error) => emit(state.copyWith(followingStatus: FollowingStatus.error)),
        (following) => emit(state.copyWith(followingStatus: FollowingStatus.loaded, followingUsers: following)));
  }

  Future<void> _addFollow(Emitter<FollowState> emit, {required int id}) async {
    emit(state.copyWith(addFollowStatus: AddFollowStatus.loading));
    final result = await followRepository.makeFollow(id: id);
    result.fold((error) {
      showError(error.message.toString());
    }, (followers) {
      emit(state.copyWith(addFollowStatus: AddFollowStatus.success));
      showSuccess(
        'Added Successfully',
      );
    });
  }

  Future<void> _removeFollowers(Emitter<FollowState> emit, {required int id}) async {
    // emit(state.copyWith(status: FollowStatus.loading));
    final result = await followRepository.removeFollower(id: id);
    // result.fold((error) => emit(state.copyWith(status: FollowStatus.error)), (followers) => {});
  }

  Future<void> _removeFollowing(Emitter<FollowState> emit, {required int id}) async {
    // emit(state.copyWith(status: FollowStatus.loading));
    final result = await followRepository.removeFollowing(id: id);
    // result.fold((error) => emit(state.copyWith(status: FollowStatus.error)), (followers) => emit(state.copyWith()));
  }

  final _searchQueryController = BehaviorSubject<String>();
  Stream<String> get searchQuery => _searchQueryController.stream;

  // Debounce duration
  final Duration _debounceTime = const Duration(milliseconds: 600);

  Future<void> _searchFollowers(Emitter<FollowState> emit, {required String query}) async {
    _searchQueryController.add(query);

    // check if stream is closed
  }

  _searchFollowersEmit(Emitter<FollowState> emit, {required String query}) async {
    FollowersModel temp = state.followersUsers!;
    if (query.isNotEmpty) {
      final ss = temp.data!.where((element) => element.name!.contains(query)).toList();
      emit(state.copyWith(filterFollowersUsers: FollowersModel(data: ss)));
    }
  }
}
