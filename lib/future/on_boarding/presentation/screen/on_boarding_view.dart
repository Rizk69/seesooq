import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/on_boarding/presentation/cubit/on_boarding__cubit.dart';
import 'package:opensooq/future/on_boarding/presentation/cubit/on_boarding__state.dart';

class OnBoardingScreen extends StatefulWidget {
  final List<String> imagePaths = [
    "assets/images/Onboarding3.png",
    "assets/images/Onboarding2.png",
    "assets/images/Onboarding1.png",
    "assets/images/Onboarding3.png",
  ];

  OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(widget.imagePaths.length),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              if (state is OnBoardingPageState) {
                return Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: widget.imagePaths.length,
                      onPageChanged: (index) {
                        context.read<OnBoardingCubit>().emit(
                            OnBoardingPageState(
                                index, widget.imagePaths.length));
                      },
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          transform: Matrix4.translationValues(
                            0.0,
                            state.pageIndex == index
                                ? 0
                                : -MediaQuery.of(context).size.height * 0.4,
                            0.0,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.59,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF4C0497),
                                      Color(0xFF4C0497).withOpacity(0.07),
                                    ],
                                  ),
                                  borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(110),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(120),
                                  ),
                                  child: Image.asset(
                                    fit: BoxFit.none,
                                    widget.imagePaths[index],
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 17),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'عنوان رئيسي',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4C0497),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'هذا مثال لنص يمكن أن يستبدل في نفس المساحة من أجل الاختبار',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor('#707070'),
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Positioned(
                      top: 15,
                      right: 20,
                      child: TextButton(
                        onPressed: () {
                          context.goNamed(Routes.login);
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.5,
                              wordSpacing: 3.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < widget.imagePaths.length; i++)
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: i == state.pageIndex ? 100 : 40,
                              height: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: i == state.pageIndex
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: state.pageIndex < state.totalPages - 1
                            ? () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                                context.read<OnBoardingCubit>().nextPage();
                              }
                            : () => context.goNamed(Routes.login),
                        child: Center(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4C0497),
                                  Color(0xFF4C0497).withOpacity(0.2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10),
                                Icon(Icons.arrow_back_ios,
                                    color: Colors.white, size: 25),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (state is OnBoardingCompleted) {
                return Center(child: Text('Onboarding Completed'));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
