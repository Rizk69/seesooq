import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/category_product/presentation/cubit/personal_info_ads_state.dart';


class PersonalInfoAdsCubit extends Cubit<PersonalInfoAdsState> {
  PersonalInfoAdsCubit() : super(PersonalInfoAdsState());
  static PersonalInfoAdsCubit get(context) => BlocProvider.of(context);

  void updateCountry(
      {required String countryCode, required String countryFlag}) {
    emit(state.copyWith(
      countryCode: countryCode,
      countryFlag: countryFlag,
    ));
  }}
