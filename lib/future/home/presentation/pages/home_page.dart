import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/home/presentation/widgets/appbar_home_page_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/card_personal_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/my_option_drawer_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/story_view_component.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/user_local_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late ScrollController scrollController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late Animation<double> translateBetween;
  late AnimationController customAnimationController;

  @override
  void initState() {
    print('dskajdhjksahjdjksa${LoginCubit.get(context).state.loginModel?.user?.name}');
    HomeCubit.get(context).updateUserLocal(UserLocalModel(
        user: UserDataModel(
            id: LoginCubit.get(context).state.loginModel?.user?.id,
            name: LoginCubit.get(context).state.loginModel?.user?.name,
            email: LoginCubit.get(context).state.loginModel?.user?.email,
            phone: LoginCubit.get(context).state.loginModel?.user?.phone ?? '')));
    customAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    scrollController = ScrollController()
      ..addListener(() {
        if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
          HomeCubit.get(context).streamController(DirectionUser.forward);
        } else if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
          HomeCubit.get(context).streamController(DirectionUser.reverse);
        }
      });
    SignUpCubit.get(context).errorController?.close();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      var cubit = HomeCubit.get(context);
      return BlocListener<FavoriteCubit, FavoriteState>(
        listenWhen: (previous, current) => current.addFavoriteStatus == AddFavoriteStatus.loaded,
        listener: (context, favState) {
          cubit.toggleLikeInOffer(favState.indexFavoriteView);
        },
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBarHomePageWidget(scaffoldKey: _scaffoldKey),
          drawer: Drawer(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Gap(
                    MediaQuery.viewPaddingOf(context).top,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#F5F5F5'),
                    ),
                    child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: AppColors.primary,
                          size: 30,
                        ),
                        onPressed: () {
                          //close Drawer
                          _scaffoldKey.currentState!.closeDrawer();
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: AppColors.linerColors,
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                      ),
                    ),
                    child: CardPersonalWidget(
                      bodyText: state.userLocalModel?.user?.phone ?? '',
                      type: CardPersonalWidgetType.drawer,
                    ),
                  ),
                  const Gap(10),
                  MyOptionDrawerWidget(cubit: cubit, scaffoldKey: _scaffoldKey),
                ],
              ),
            ),
          ),
          body: Scrollable(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            dragStartBehavior: DragStartBehavior.start,
            scrollBehavior: const MaterialScrollBehavior(),
            viewportBuilder: (context, position) => RefreshIndicator(
              onRefresh: () async {
                StoryUserCubit.get(context).getUsersStories();
              },
              child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  padding: const EdgeInsets.only(bottom: 10),
                  child: StoryViewComponent(
                    cubit: cubit,
                  )),
            ),
          ),
        ),
      );
    });
  }
}
