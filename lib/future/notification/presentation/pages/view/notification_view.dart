import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart';
import 'package:opensooq/future/notification/presentation/cubit/notification_state.dart';
import 'package:opensooq/future/notification/presentation/pages/widgets/notification_empty.dart';
import '../widgets/notification_item_widget.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels >
            _scrollController.position.maxScrollExtent * 0.6) {
          // NotificationCubit.get(context).loadMore();
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
      final cubit = NotificationCubit.get(context);
      final notifications = state.notificationUser;
      final isLoadingMore = state.loadingMore ?? false;
      return RefreshIndicator(
        onRefresh: () async {
          await cubit.initialize();
        },
        child: CustomScrollView(
          slivers: [
            state.notificationStatus == NotificationStatus.loading
                ? const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : state.notificationStatus == NotificationStatus.error
                    ? const NotificationEmpty()
                    : SliverFillRemaining(
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: (){

                                  },
                                  child: TranslateText(
                                    styleText: StyleText.h5,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                    text: "MarkAllRead",
                                    colorText: HexColor("#F05A35"),
                                  ),
                                ),
                                Gap(10),
                                Expanded(
                                  child: RefreshIndicator(
                                    onRefresh: () async {
                                      // await cubit.initialize();
                                      print('refresh');
                                    },
                                    child: CustomScrollView(
                                      controller: _scrollController,
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      slivers: [
                                        SliverList(
                                            delegate:
                                                SliverChildBuilderDelegate(
                                          (BuildContext context, int index) {
                                            return NotificationItemWidget(
                                              state.notificationUser?.data
                                                  ?.notifications?[index],
                                            );
                                          },
                                          childCount: notifications?.data
                                                  ?.notifications?.length ??
                                              0,
                                        )),
                                        SliverToBoxAdapter(
                                          child: Visibility(
                                              visible: isLoadingMore,
                                              child: const Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Center(
                                                    child:
                                                        CircularProgressIndicator
                                                            .adaptive()),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
          ],
        ),
      );
    });
  }
}
