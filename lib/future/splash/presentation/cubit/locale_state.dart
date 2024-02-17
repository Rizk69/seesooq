part of 'lcoale_cubit.dart';

enum StatusLocale { init, loading, success }

class LocaleState extends Equatable {
  final Locale locale;
  final String? theme;
  final StatusLocale statusLocale;
  const LocaleState(
      {required this.locale,
      this.theme,
      this.statusLocale = StatusLocale.init});

  @override
  List<Object?> get props => [locale, theme, statusLocale];

  LocaleState copyWith(
      {Locale? locale, String? theme, StatusLocale? statusLocale}) {
    return LocaleState(
        locale: locale ?? this.locale,
        theme: theme ?? this.theme,
        statusLocale: statusLocale ?? this.statusLocale);
  }
}
