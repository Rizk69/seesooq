import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/payment_gateway/presentation/cubit/payment_gatway_cubit.dart';
import 'package:opensooq/future/payment_gateway/presentation/cubit/payment_gatway_state.dart';

class PaymentStripePage extends StatefulWidget {
  const PaymentStripePage({super.key, required this.price});
  final String? price;

  @override
  State<PaymentStripePage> createState() => _PaymentStripePageState();
}

class _PaymentStripePageState extends State<PaymentStripePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PaymentGatewayCubit()..getPaymentGateway(widget.price.toString()),
        child: BlocConsumer<PaymentGatewayCubit, PaymentGatewayState>(listener: (context, state) {
          if (state.paymentStatus == PaymentStatus.failure) {
            context.pop();
          }
        }, builder: (context, state) {
          var cubit = PaymentGatewayCubit();
          return Scaffold(
              appBar: AppBar(
                title: const Text('PaymentStripePage'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state.paymentStatus == PaymentStatus.success) const Text('Payment Success'),
                  ],
                ),
              ));
        }));
  }
}
