import 'enums.dart';

extension DiscountTypesIds on DiscountTypes {
  String asString() {
    switch (this) {
      case DiscountTypes.fixed:
        return 'fixed';
      case DiscountTypes.percentage:
        return 'percentage';
    }
  }

  int asInt() {
    switch (this) {
      case DiscountTypes.fixed:
        return 0;
      case DiscountTypes.percentage:
        return 1;
    }
  }
}

DiscountTypes? orderStatusFromInt(int? id) {
  switch (id) {
    case 0:
      return DiscountTypes.fixed;
    case 1:
      return DiscountTypes.percentage;
    default:
      return null;
  }
}
