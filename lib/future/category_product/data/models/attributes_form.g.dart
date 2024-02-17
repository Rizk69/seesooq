// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributesFormImpl _$$AttributesFormImplFromJson(Map<String, dynamic> json) =>
    _$AttributesFormImpl(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      albums: (json['albums'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      price: json['price'] as String? ?? '',
      isOffer: json['isOffer'] as bool? ?? false,
      offerPrice: json['offerPrice'] as String? ?? '',
      offerStartTime: json['offerStartTime'] as String? ?? '',
      offerStartDate: json['offerStartDate'] as String? ?? '',
      offerEndTime: json['offerEndTime'] as String? ?? '',
      offerEndDate: json['offerEndDate'] as String? ?? '',
      governorateId: json['governorateId'] as String? ?? '',
      cityId: json['cityId'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      contactMethods: json['contactMethods'] as String? ?? '',
      attributes: (json['attributes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e),
          ) ??
          const {},
      paymentMethods: json['paymentMethods'] as String? ?? '',
      video: json['video'] as String? ?? '',
    );

Map<String, dynamic> _$$AttributesFormImplToJson(
        _$AttributesFormImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'albums': instance.albums,
      'price': instance.price,
      'isOffer': instance.isOffer,
      'offerPrice': instance.offerPrice,
      'offerStartTime': instance.offerStartTime,
      'offerStartDate': instance.offerStartDate,
      'offerEndTime': instance.offerEndTime,
      'offerEndDate': instance.offerEndDate,
      'governorateId': instance.governorateId,
      'cityId': instance.cityId,
      'phone': instance.phone,
      'contactMethods': instance.contactMethods,
      'attributes':
          instance.attributes.map((k, e) => MapEntry(k.toString(), e)),
      'paymentMethods': instance.paymentMethods,
      'video': instance.video,
    };
