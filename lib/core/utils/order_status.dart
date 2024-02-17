import 'enums.dart';

extension OrderStatusIds on OrderStatus {
  String asString() {
    switch (this) {
      case OrderStatus.pending:
        return 'pending';
      case OrderStatus.confirmed:
        return 'confirmed';
      case OrderStatus.outForDelivery:
        return 'outForDelivery';
      case OrderStatus.completed:
        return 'completed';
      case OrderStatus.cancelled:
        return 'cancelled';
      case OrderStatus.refunded:
        return 'refunded';
    }
  }

  int asInt() {
    switch (this) {
      case OrderStatus.pending:
        return 0;
      case OrderStatus.confirmed:
        return 1;
      case OrderStatus.outForDelivery:
        return 2;
      case OrderStatus.completed:
        return 3;
      case OrderStatus.cancelled:
        return 4;
      case OrderStatus.refunded:
        return 5;
    }
  }
}

OrderStatus? orderStatusFromInt(int? id) {
  switch (id) {
    case 0:
      return OrderStatus.pending;
    case 1:
      return OrderStatus.confirmed;
    case 2:
      return OrderStatus.outForDelivery;
    case 3:
      return OrderStatus.completed;
    case 4:
      return OrderStatus.cancelled;
    case 5:
      return OrderStatus.refunded;
    default:
      return null;
  }
}
