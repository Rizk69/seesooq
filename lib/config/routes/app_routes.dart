import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/go_redirect.dart';
import 'package:opensooq/config/routes/redirect/auth_redirect.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/app/presentation/pages/app_view.dart';
import 'package:opensooq/future/blogs/presentatin/pages/route/blogs_route.dart';
import 'package:opensooq/future/caht/presentation/chat_massage_page.dart';
import 'package:opensooq/future/caht/route/chat_route.dart';
import 'package:opensooq/future/category/presentation/pages/routes/category_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/category_product_page.dart';
import 'package:opensooq/future/category_product/presentation/pages/details_categoey_page.dart';
import 'package:opensooq/future/category_product/presentation/pages/root_ads_page.dart';
import 'package:opensooq/future/category_product/presentation/pages/root_categoey.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/details_ads_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/location_details_ads_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/personal_info_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/review_ads_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/uploade_photo_route.dart';
import 'package:opensooq/future/category_product/presentation/pages/route/view_ads_route.dart';
import 'package:opensooq/future/favorite/presentation/pages/route/favorite_route.dart';
import 'package:opensooq/future/follow_section/presentation/page/followers_page.dart';
import 'package:opensooq/future/follow_section/presentation/page/following_page.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/pages/advertisment_view.dart';
import 'package:opensooq/future/home/presentation/pages/design_story_page.dart';
import 'package:opensooq/future/home/presentation/pages/home_page.dart';
import 'package:opensooq/future/home/presentation/widgets/story_view_widget.dart';
import 'package:opensooq/future/location/presentation/pages/location_route.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/pages/route/login_route.dart';
import 'package:opensooq/future/login/presentation/pages/route/login_splash_route.dart';
import 'package:opensooq/future/notification/presentation/pages/view/notification_page.dart';
import 'package:opensooq/future/packages/presentation/pages/route/packages_route.dart';
import 'package:opensooq/future/profile/presentation/profile_route.dart';
import 'package:opensooq/future/search/presentation/pages/search_page.dart';
import 'package:opensooq/future/setting/presentation/accoun_mange_page.dart';
import 'package:opensooq/future/setting/presentation/add_location_user.dart';
import 'package:opensooq/future/setting/presentation/change_password_screen.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/pages/sucsses_edit_profile_page.dart';
import 'package:opensooq/future/setting/presentation/frequently_Asked_Questions.dart';
import 'package:opensooq/future/setting/presentation/look_at_market_page.dart';
import 'package:opensooq/future/setting/presentation/notfication_page.dart';
import 'package:opensooq/future/setting/presentation/settings_page.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/splash/presentation/screens/introduction_page.dart';
import 'package:opensooq/future/wallet/presentation/pages/route/wallet_route.dart';

import '../../future/myads/routing/ads_route.dart';
import '../../future/reels/routing/reels_route.dart';
import '../../future/setting/presentation/Connect_with_us.dart';
import '../../future/setting/presentation/change_language_page.dart';
import '../../future/setting/presentation/remove_account.dart';
import '../../future/setting/presentation/securty_page.dart';
import '../../future/setting/presentation/sucsse_cahnge_password.dart';
import '../../future/setting/presentation/terms_screens.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';
  static const String signUp = 'signUp';
  static const String packages = 'packages';
  static const String wallet = 'wallet';
  static const String paymentGateway = 'paymentGateway';
  static const String paymentSuccess = 'paymentSuccess';
  static const String confirmCode = 'confirmCode';
  static const String confirmCodeSignUp = 'confirmCodeSignUp';
  static const String unLockPassword = 'unLockPassword';
  static const String storyView = '/storyView';
  static const String favorite = 'favorite';
  static const String myAds = 'myAds';
  static const String reels = '/reels';
  static const String reelView = 'reelView';
  static const String search = '/search';
  static const String myReels = 'myReels';
  static const String setting = '/setting';
  static const String accountMangePage = '/accountMangePage';
  static const String changePassword = '/changePassword';
  static const String sucssesChangePasswordPage = '/sucssesChangePasswordPage';
  static const String sucssesAddLocationPage = '/sucssesAddLocationPage';
  static const String removeAccountPage = '/removeAccountPage';
  static const String sucssesRemoveAccountPage = '/sucssesRemoveAccountPage';
  static const String notificationPage = '/notificationPage';
  static const String changeLanguagePage = '/changeLanguagePage';
  static const String changeThemePage = '/changeThemePage';
  static const String privacyScreen = '/privacyScreen';
  static const String termsConditionsScreen = '/termsConditionsScreen';
  static const String lookAtMarket = '/lookAtMarket';
  static const String connectWithUsPage = '/connectWithUsPage';
  static const String frequentlyAskedQuestions = '/frequentlyAskedQuestions';
  static const String sucssesConnectWithUsPage = '/sucssesConnectWithUsPage';
  static const String securityPage = '/securityPage';
  static const String emptyLocationPage = '/emptyLocationPage';
  static const String addLocationUser = '/addLocationUser';
  static const String designStory = '/designStory';
  static const String forgetPasswordPRoute = 'forgetPasswordPage';
  static const String loginSplash = '/';
  static const String introductionPage = '/introductionPage';
  static const String editProfile = 'editProfile';
  static const String followersView = '/followersView';
  static const String followingView = '/followingView';

  static const String sucsseEditProfile = '/sucsseeditProfile';
  static const String profilePage = '/profilePage';
  static const String chatPage = '/chatPage';
  static const String newChatPage = 'newChatPage';
  static const String chatMassagePage = '/chatMassagePage';
  static const String notification = 'notification';
  static const String rootCategoey = '/rootCategory';
  static const String uploadAdsPage = 'uploadAdsPage';
  static const String blogsRoute = 'blogsRoute';
  static const String blogRoute = 'blogRoute';
  static const String getAdsViewRoute = 'getAdsViewRoute';
  static const String reviewAdsRoute = 'reviewAdsRoute';
  static const String uploadPhoto = 'uploadPhoto';

  // static const String getAdsViewByAddRoute = 'getAdsViewByAddRoute';
  static const String brandCategory = 'brandCategory';
  static const String categoryProductPage = '/categoryProductPage';
  static const String detailsCategoryPage = 'detailsCategoryPage';
  static const String categoryView = 'categoryView';
  static const String detailsCategoryView = 'detailsCategoryView';
  static const String oneCategoryView = 'oneCategoryView';
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> sectionANavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
final GlobalKey<NavigatorState> addsNavKey = GlobalKey<NavigatorState>(debugLabel: 'adsNav');
final GoRouter router = GoRouter(
  initialLocation: Routes.loginSplash,
  navigatorKey: rootNavigatorKey,
  refreshListenable: Listenable.merge([di.sl<LoginCubit>(), di.sl<SignUpCubit>()]),
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BlocProvider(create: (context) => HomeCubit(), child: AppWithNavBar(navigationShell: navigationShell));
        },
        branches: [
          StatefulShellBranch(navigatorKey: sectionANavigatorKey, routes: [
            GoRoute(
                path: Routes.home,
                name: Routes.home,
                redirect: GoRedirect.compose([AuthRedirect()]),
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    child: const HomePage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  );
                },
                routes: [
                  PackagesRoute(),
                  FavoriteRoute(),
                  MyAdsRoute(),
                  WalletRoute(),
                  BlogsRoute(),
                  GoRoute(
                    path: 'view_ads_home',
                    name: 'view_ads_home',
                    pageBuilder: (context, state) {
                      final id = (state.extra as String);
                      return NoTransitionPage(
                          child: ShowAdsByHomeScreen(
                        id: id,
                      ));
                    },
                  ),
                  LocationRoute(),
                  CategoryRoute(),
                  GoRoute(
                    path: Routes.notification,
                    name: Routes.notification,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        child: const NotificationPage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                ]),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.search,
              name: Routes.search,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  child: const SearchPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return RotationTransition(
                      turns: animation,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      child: child,
                    );
                  },
                );
              },
            ),
          ]),
          StatefulShellBranch(routes: [
            ShellRoute(
                builder: (context, state, child) {
                  final data = (state.extra == null) ? {'categoryName': 'category'} : state.extra as Map<String, dynamic>;
                  return RootCategory(title: data['categoryName'] ?? '', child: child);
                },
                routes: [
                  GoRoute(
                      path: Routes.categoryProductPage,
                      name: Routes.categoryProductPage,
                      pageBuilder: (context, state) => const NoTransitionPage(
                            child: CategoryProductPage(),
                          ),
                      routes: [
                        ReviewAdsRoute(),
                        GoRoute(
                            path: Routes.detailsCategoryPage,
                            name: Routes.detailsCategoryPage,
                            pageBuilder: (context, state) {
                              var data = (state.extra == null) ? {"categoryName": '', "categoryId": ''} : state.extra as Map<String, dynamic>;
                              return NoTransitionPage(
                                child: DetailsCategoryProductPage(
                                    categoryName: data['categoryName'] ?? '', categoryId: data['categoryId'].toString() ?? ''),
                              );
                            },
                            routes: [
                              StatefulShellRoute.indexedStack(
                                branches: [
                                  DetailsAdsRoute(),
                                  LocationDetailsAdsRoute(),
                                  PersonalInfoAdsRoute(),
                                  ViewAdsRoute(),
                                  UploadPhotoRoute(),
                                  // GoRoute(
                                  //     path: Routes.uploadPhoto,
                                  //     name: Routes.uploadPhoto,
                                  //     pageBuilder: (context, state) {
                                  //       var extra = state.extra == null
                                  //           ? {}
                                  //           : state.extra as Map<String, dynamic>;
                                  //       return NoTransitionPage(
                                  //           child: UploadPhotoPage(
                                  //             categoryName: extra['categoryName'] ?? '',
                                  //             details: extra['details'] ?? '',
                                  //           ));
                                  //     },
                                  //     routes: [
                                  //
                                  //     ]),
                                ],
                                builder: (context, state, navigationShell) {
                                  return RootAdsPage(statefulNavigationShell: navigationShell);
                                },
                              ),
                            ]),
                      ]),
                ]),
          ]),
          StatefulShellBranch(routes: [ChatRoute()]),
          StatefulShellBranch(routes: [
            ProfileRoute(),
          ]),
        ]),
    LoginSplashRoute(),
    LoginRoute(),
    ReelsRoute(),
    GoRoute(
      path: Routes.introductionPage,
      name: Routes.introductionPage,
      builder: (context, state) => const IntroductionPage(),
    ),
    GoRoute(
        path: Routes.storyView,
        name: Routes.storyView,
        pageBuilder: (context, state) {
          final data = (state.extra as Map<String, dynamic>);
          return CustomTransitionPage(
            child: StoryViewWidget(
                userStory: data.containsKey('userStory') ? data['userStory'] : [],
                infoData: data.containsKey('infoData') ? data['infoData'] : InfoData()),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
        routes: [
          GoRoute(
            path: 'sss',
            name: 'sss',
            builder: (context, state) => const IntroductionPage(),
          ),
        ]),
    GoRoute(
      path: Routes.designStory,
      name: Routes.designStory,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const DesignStoryPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.sucsseEditProfile,
      name: Routes.sucsseEditProfile,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SucssesEditProfile(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.followersView,
      name: Routes.followersView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const FollowersPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.followingView,
      name: Routes.followingView,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const FollowingPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.setting,
      name: Routes.setting,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: SettingsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.accountMangePage,
      name: Routes.accountMangePage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: AccountMangePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.changePassword,
      name: Routes.changePassword,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: ChangePasswordPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.sucssesChangePasswordPage,
      name: Routes.sucssesChangePasswordPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SucssesChangePasswordPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.securityPage,
      name: Routes.securityPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: SecurityPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.emptyLocationPage,
      name: Routes.emptyLocationPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: EmptyLocationPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.addLocationUser,
      name: Routes.addLocationUser,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: AddLocationUser(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.sucssesAddLocationPage,
      name: Routes.sucssesAddLocationPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SucssesAddLocationPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.removeAccountPage,
      name: Routes.removeAccountPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const RemoveAccountPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.sucssesRemoveAccountPage,
      name: Routes.sucssesRemoveAccountPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SucssesRemoveAccountPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.notificationPage,
      name: Routes.notificationPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const NotificationSettingPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.changeLanguagePage,
      name: Routes.changeLanguagePage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const ChangeLanguagePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.changeThemePage,
      name: Routes.changeThemePage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const ChangeLightDarkPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.privacyScreen,
      name: Routes.privacyScreen,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const TermsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.termsConditionsScreen,
      name: Routes.termsConditionsScreen,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const TermsConditionsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.lookAtMarket,
      name: Routes.lookAtMarket,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const LookAtMarketPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.connectWithUsPage,
      name: Routes.connectWithUsPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const ConnectWithUsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.frequentlyAskedQuestions,
      name: Routes.frequentlyAskedQuestions,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const FrequentlyAskedQuestionsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.sucssesConnectWithUsPage,
      name: Routes.sucssesConnectWithUsPage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: SucssesConnectWithUsPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: Routes.chatMassagePage,
      name: Routes.chatMassagePage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const ChatMassagePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
  ],
);
