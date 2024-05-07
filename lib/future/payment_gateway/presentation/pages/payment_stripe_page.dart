import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/payment_gateway/presentation/cubit/payment_gatway_cubit.dart';
import 'package:opensooq/future/payment_gateway/presentation/cubit/payment_gatway_state.dart';
import 'package:opensooq/future/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:opensooq/future/wallet/presentation/pages/wallet_page.dart';

class PaymentStripePage extends StatefulWidget {
  const PaymentStripePage({super.key, required this.price, required this.typeTransaction});
  final String? price;
  final TypeTransaction typeTransaction;

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
          } else if (state.paymentStatus == PaymentStatus.success) {
            if (widget.typeTransaction == TypeTransaction.wallet) {
              WalletCubit.get(context).storePayment(amount: widget.price.toString(), transactionId: state.paymentIntent?.id.toString() ?? '');
            }
            context.pushNamed(Routes.paymentSuccess, extra: widget.typeTransaction.toString());
          }
        }, builder: (context, state) {
          var cubit = PaymentGatewayCubit();
          return Scaffold(
            appBar: AppBar(
              title: const Text('PaymentStripePage'),
            ),
            body: null,
          );
        }));
  }
}
