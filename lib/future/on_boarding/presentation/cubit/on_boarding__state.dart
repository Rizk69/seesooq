import 'package:flutter/material.dart';



@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class OnBoardingPageState extends OnBoardingState {
  final int pageIndex;
  final int totalPages;

  OnBoardingPageState(this.pageIndex, this.totalPages);
}
class OnBoardingCompleted extends OnBoardingState {}
