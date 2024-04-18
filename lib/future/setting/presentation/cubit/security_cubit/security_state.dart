
import 'package:meta/meta.dart';

@immutable
abstract class SecurityState {}

class SecurityInitial extends SecurityState {}

class ToggleOnState extends SecurityState {}

class ToggleOffState extends SecurityState {}
