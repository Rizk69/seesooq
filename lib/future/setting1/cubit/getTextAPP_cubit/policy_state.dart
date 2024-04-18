part of 'policy_cubit.dart';

@immutable
abstract class PolicyState {}

class PolicyInitial extends PolicyState {}

class PrivacyPolicyLoading extends PolicyState {}

class PrivacyPolicySuccess extends PolicyState {
  PrivacyPolicyModel privacyPolicyModel;
  PrivacyPolicySuccess(this.privacyPolicyModel);
}

class PrivacyPolicyError extends PolicyState {
  final Failures failures;

  PrivacyPolicyError(this.failures);
}
class TermsOfUseLoading extends PolicyState {}

class TermsOfUseSuccess extends PolicyState {
  TermsOfUseModel termsOfUseModel;
  TermsOfUseSuccess(this.termsOfUseModel);
}

class TermsOfUseError extends PolicyState {
  final Failures failures;

  TermsOfUseError(this.failures);
}
class ReasonsForDeletionLoading extends PolicyState {}

class ReasonsForDeletionSuccess extends PolicyState {
  ReasonsForDeletionModel reasonsForDeletionModel;
  ReasonsForDeletionSuccess(this.reasonsForDeletionModel);
}

class ReasonsForDeletionError extends PolicyState {
  final Failures failures;

  ReasonsForDeletionError(this.failures);
}