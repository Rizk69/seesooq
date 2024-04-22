import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/cubit/reaseon_deletions_cubit/reason_deletions_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/reaseon_deletions_cubit/reason_deletions_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/custom_button_widget.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';

class RemoveAccountPage extends StatelessWidget {
  const RemoveAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ReasonDeletionsCubit()..getReasonsForDeletion(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
          child: Column(
            children: [
              HeaderScreens(
                  title: 'reason_for_deleting',
                  onPressed: () {
                    context.go(Routes.accountMangePage);
                  }),
              const SizedBox(height: 37),
              BlocBuilder<ReasonDeletionsCubit, ReasonDeletionsState>(
                builder: (context, state) {
                  if (state.reasonDeletionsStatus == ReasonDeletionsStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.reasonDeletionsStatus == ReasonDeletionsStatus.error) {
                    return const Center(child: Text('Error'));
                  }
                  if (state.reasonDeletionsStatus == ReasonDeletionsStatus.loaded &&
                      state.reasonDeletionsModel != null &&
                      state.reasonDeletionsModel?.data != null && // Ensure data is not null
                      state.reasonDeletionsModel?.data?.data != null) { // Check that data array is not null

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.reasonDeletionsModel?.data?.data?.length, // Ensure itemCount corresponds to data length
                      itemBuilder: (context, index) {
                        var reason = state.reasonDeletionsModel!.data!.data![index];
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            title: Text(
                              reason.title ?? '', // Safe access
                              style: TextStyle(color: HexColor('200E32'), fontSize: 14),
                            ),
                            leading: Radio(
                              value: reason.id,
                              groupValue: state.selectedReason,
                              onChanged: (value) {
                                context.read<ReasonDeletionsCubit>().selectReason(value!);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return const SizedBox();
                },
              ),
              Spacer(),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButtonWidget(
                    color: Colors.white,
                    text: 'delete_my_account'.tr(),
                    onPressed: () {
                      context.go(Routes.sucssesRemoveAccountPage);
                    },
                  ))
            ],
          ),
        ));
  }
}

class SucssesRemoveAccountPage extends StatelessWidget {
  const SucssesRemoveAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          'assets/images/svg/header_auth_page.svg',
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.3,
        ),
        Center(child: AnimatedCheck(img: "assets/images/Group 448.png")),
        const SizedBox(
          height: 34,
        ),
        Center(
            child: titleText(
                'تم حذف الحساب بنجاح', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText('قمت بحذف الحساب الخاص بك بنجاح،',
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText(
                '...تشرفنا بزيارتك', HexColor('#707070'), StyleText.h5)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'متابعة',
                onPressed: () {
                  context.go(Routes.home);
                },
              )),
        )
      ],
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return TranslateText(
      styleText: styleText,
      colorText: color,
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}
