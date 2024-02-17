import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/future/packages/presentation/cubit/packages_cubit.dart';
import 'package:opensooq/future/packages/presentation/cubit/packages_state.dart';

class SegmentedButtonWidget extends StatelessWidget {
  const SegmentedButtonWidget({
    super.key,
    required this.state,
  });

  final PackagesState state;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PackagesCubit>();

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(34),
                    onTap: () {
                      cubit.changeSegmentButtonState(SegmentButtonState.day);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: state.segmentButtonState == SegmentButtonState.day
                            ? LinearGradient(
                                colors: AppColors.linerColors,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : null,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Center(
                        child: Text(
                          'Day',
                          style: TextStyle(
                            fontSize: 18,
                            color: state.segmentButtonState == SegmentButtonState.day ? Colors.white : Colors.grey.shade700,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(34),
                    onTap: () {
                      cubit.changeSegmentButtonState(SegmentButtonState.month);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: state.segmentButtonState == SegmentButtonState.month
                            ? LinearGradient(
                                colors: AppColors.linerColors,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : null,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Center(
                        child: Text(
                          'Month',
                          style: TextStyle(
                            fontSize: 18,
                            color: state.segmentButtonState == SegmentButtonState.month ? Colors.white : Colors.grey.shade700,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
