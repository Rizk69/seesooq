import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:opensooq/future/wallet/presentation/cubit/wallet_state.dart';
import 'package:opensooq/future/wallet/presentation/widgets/transaction_widget.dart';

enum TypeTransaction { wallet, package }

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => WalletCubit()..getWallet(),
        child: BlocBuilder<WalletCubit, WalletState>(builder: (context, state) {
          bool isOrientation = MediaQuery.of(context).orientation == Orientation.landscape;
          return Scaffold(
            appBar: CustomAppBar(
              title: '',
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TranslateText(styleText: StyleText.h4, text: 'wallet_drawer', colorText: AppColors.primary),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          HexColor('#8676FB'),
                          HexColor('#AB7BFF'),
                        ],
                      ),
                    ),
                    height: isOrientation ? context.width * 0.2 : context.height * 0.2,
                    width: context.width,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SvgPicture.asset(
                              'wallet_shape'.toSvg,
                              width: context.width,
                              height: context.height * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: isOrientation
                                ? (context.width * 0.2) - (context.width * 0.23 / 2)
                                : (context.height * 0.2) - (context.height * 0.23 / 2),
                            child: Container(
                              width: 45,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                color: Colors.white,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          HexColor('#4C0497'),
                                          HexColor('#D9D9D9').withOpacity(0.5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            right: 30,
                            top: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 6,
                                  width: context.width * 0.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                const TranslateText(
                                  styleText: StyleText.h4,
                                  text: 'Balance Now',
                                  colorText: Colors.white,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TranslateText(
                                  styleText: StyleText.h4,
                                  text: '${state.walletModel?.wallet.toString().price} JD',
                                  colorText: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: CustomButtonWidget(
                          text: 'add_money',
                          onPressed: () {
                            context.pushNamed(
                              Routes.paymentGateway,
                              extra: '100',
                              queryParameters: {'type': 'wallet'},
                            );
                          },
                          color: Colors.white,
                        )),
                        const Gap(20),
                        Expanded(
                            child: CustomButtonWidget(
                          text: 'charge_wallet',
                          onPressed: () {},
                          color: HexColor('#200E32'),
                          disableBorder: Border.all(
                            color: HexColor('#4C0497'),
                            width: 1,
                          ),
                          backgroundColor: Colors.white,
                        )),
                      ],
                    ),
                  ),
                  const TransactionWidget(),
                ],
              ),
            ),
          );
        }));
  }
}
