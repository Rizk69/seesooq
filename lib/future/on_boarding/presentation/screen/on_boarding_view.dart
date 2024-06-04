import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
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
                          OnBoardingPageState(index, widget.imagePaths.length));
                    },
                    itemBuilder: (context, index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        transform: Matrix4.translationValues(
                          0.0,
                          state.pageIndex == index
                              ? 0
                              : -MediaQuery.of(context).size.height * 0.5,
                          0.0,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF4C0497),
                                    Color(0xFF4C0497).withOpacity(0.04),
                                  ],
                                ),
                                borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(60),
                                ),
                              ),
                              child: Image.asset(
                                widget.imagePaths[index],
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'عنوان رئيسي',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'هذا مثال لنص يمكن أن يستبدل في نفس المساحة من أجل الاختبار',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const SizedBox(height: 30),
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: TextButton(
                      onPressed: () {
                        context.goNamed(Routes.login);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < widget.imagePaths.length; i++)
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: i == state.pageIndex ? 80 : 20,
                            height: 10,
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
                    left: MediaQuery.of(context).size.width * 0.4,
                    right: MediaQuery.of(context).size.width * 0.4,
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
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Icon(Icons.arrow_forward,
                            color: Colors.white, size: 30),
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
    );
  }
}
