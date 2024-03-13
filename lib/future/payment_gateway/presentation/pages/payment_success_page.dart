import 'package:flutter/material.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key, this.type});
  final String? type;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('PaymentSuccessPage ${type.toString()}'),
    );
  }
}
