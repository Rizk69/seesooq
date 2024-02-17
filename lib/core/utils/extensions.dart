import 'package:intl/intl.dart';

import 'enums.dart';

extension OfferStatusString on OfferStatus {
  String asString() {
    switch (this) {
      case OfferStatus.accepted:
        return 'accepted';
      case OfferStatus.completed:
        return 'completed';
    }
  }
}

extension WalletTransactionTypeString on WalletTransactionType {
  String asString() {
    switch (this) {
      case WalletTransactionType.credit:
        return 'credit';
      case WalletTransactionType.debit:
        return 'debit';
    }
  }
}

extension ShortDate on DateTime {
  String shortDate() {
    return DateFormat.yMd('en_GB').format(this);
  }
}

extension ShortMonthDate on DateTime {
  String shortMonthDate() {
    return DateFormat.yMMMMd('en_GB').format(this);
  }

  String shortMonthAndYear() {
    return DateFormat.yMMM('en_GB').format(this);
  }
}

extension ShortMonthDateFromUTC on DateTime {
  String shortMonthDateFromUTC() {
    var localDate = DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    return DateFormat.jm('en_GB').add_yMd().format(localDate);
  }
}
