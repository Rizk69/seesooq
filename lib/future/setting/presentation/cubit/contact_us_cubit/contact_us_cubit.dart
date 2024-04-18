import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/setting/presentation/cubit/contact_us_cubit/contact_us_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit() : super(const ContactUsState());
  static ContactUsCubit get(context) => BlocProvider.of(context);

  void updateCountry({required String countryCode, required String countryFlag}) {}
}
