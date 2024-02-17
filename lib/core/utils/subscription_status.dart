import 'enums.dart';

getSubscriptionStatusFromString(String? status) {
  switch (status) {
    case 'active':
      return SubscriptionStatus.active;
    case 'blocked':
      return SubscriptionStatus.blocked;
    case 'expired':
      return SubscriptionStatus.expired;
    default:
      return SubscriptionStatus.pendingPayment;
  }
}

extension SubscriptionStatusString on SubscriptionStatus {
  String asString() {
    switch (this) {
      case SubscriptionStatus.active:
        return 'active';
      case SubscriptionStatus.blocked:
        return 'blocked';
      case SubscriptionStatus.pendingPayment:
        return 'pendingPayment';
      case SubscriptionStatus.expired:
        return 'expired';
    }
  }
}
