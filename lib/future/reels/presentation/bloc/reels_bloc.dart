import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:opensooq/future/reels/data/reels_repository/reels_repository.dart';

part 'reels_bloc.freezed.dart';
part 'reels_event.dart';
part 'reels_state.dart';

class ReelsBloc extends Bloc<ReelsEvent, ReelsState> {
  final _reelsRepository = di.sl<ReelsRepository>();

  static ReelsBloc get(context) => BlocProvider.of(context);
  ReelsBloc() : super(const ReelsState()) {
    on<ReelsEvent>((event, emit) async {
      await event.when(
        getReels: () async {
          await _getReels(emit);
        },
        refreshReels: () {},
        loadMoreReels: () {},
        deleteReel: (id) {},
        likeReel: (id) {},
        unlikeReel: (id) {},
        replyReel: (id, comment) {},
        shareReel: (id) {},
      );
    });
  }
  Future<void> _getReels(Emitter emit) async {
    emit(state.copyWith(status: ReelsStatus.loading));
    final reels = await _reelsRepository.getReels();
    reels.fold(
      (error) => emit(state.copyWith(status: ReelsStatus.error)),
      (reels) => emit(state.copyWith(reels: reels, status: ReelsStatus.loaded)),
    );
  }
}
