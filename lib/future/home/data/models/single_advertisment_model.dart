SingleAdvertismentModel deserializeSingleAdvertismentModel(Map<String, dynamic> json) => SingleAdvertismentModel.fromJson(json);

class SingleAdvertismentModel {
  SingleAdvertismentModel({
    this.result,
    this.data,
  });

  SingleAdvertismentModel.fromJson(dynamic json) {
    result = json['result'];
    data = json['data'] != null ? SingleAdvertisment.fromJson(json['data']) : null;
  }
  String? result;
  SingleAdvertisment? data;
  SingleAdvertismentModel copyWith({
    String? result,
    SingleAdvertisment? data,
  }) =>
      SingleAdvertismentModel(
        result: result ?? this.result,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class SingleAdvertisment {
  SingleAdvertisment({
    this.id,
    this.customeId,
    this.title,
    this.desc,
    this.price,
    this.phone,
    this.country,
    this.category,
    this.attributes,
    this.city,
    this.isOffer,
    this.offerPrice,
    this.offerStartDatetime,
    this.offerEndDatetime,
    this.facebook,
    this.youtube,
    this.twitter,
    this.instagram,
    this.mainImage,
    this.album,
    this.video,
    this.user,
    this.checkFollwing,
    this.checkIfFavourite,
    this.visits,
    this.paymentMethods,
    this.createdAt,
  });

  SingleAdvertisment.fromJson(dynamic json) {
    id = json['id'];
    customeId = json['custome_id'];
    title = json['title'];
    desc = json['desc'];
    price = json['price'];
    phone = json['phone'];
    country = json['country'];
    category = json['category'] != null ? SingleAdvertismentCategory.fromJson(json['category']) : null;

    album = json['album'];

    city = json['city'];
    isOffer = json['is_offer'];
    offerPrice = json['offer_price'];
    offerStartDatetime = json['offer_start_datetime'];
    offerEndDatetime = json['offer_end_datetime'];
    facebook = json['facebook'];
    youtube = json['youtube'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    mainImage = json['main_image'];

    attributes = json['attributes'];

    video = json['video'];
    user = json['user'] != null ? SingleAdvertismentUser.fromJson(json['user']) : null;
    checkFollwing = json['checkFollwing'];
    checkIfFavourite = json['checkIfFavourite'];
    visits = json['visits'];
    paymentMethods = json['payment_methods'];
    createdAt = json['created_at'];
  }
  num? id;
  String? customeId;
  String? title;
  String? desc;
  num? price;
  String? phone;
  dynamic country;
  SingleAdvertismentCategory? category;
  List<dynamic>? attributes;
  dynamic city;
  String? isOffer;
  dynamic offerPrice;
  dynamic offerStartDatetime;
  dynamic offerEndDatetime;
  String? facebook;
  String? youtube;
  String? twitter;
  String? instagram;
  String? mainImage;
  List<dynamic>? album;
  String? video;
  SingleAdvertismentUser? user;
  bool? checkFollwing;
  bool? checkIfFavourite;
  String? visits;
  String? paymentMethods;
  String? createdAt;
  SingleAdvertisment copyWith({
    num? id,
    String? customeId,
    String? title,
    String? desc,
    num? price,
    String? phone,
    dynamic country,
    SingleAdvertismentCategory? category,
    List<dynamic>? attributes,
    dynamic city,
    String? isOffer,
    dynamic offerPrice,
    dynamic offerStartDatetime,
    dynamic offerEndDatetime,
    String? facebook,
    String? youtube,
    String? twitter,
    String? instagram,
    String? mainImage,
    List<dynamic>? album,
    String? video,
    SingleAdvertismentUser? user,
    bool? checkFollwing,
    bool? checkIfFavourite,
    String? visits,
    String? paymentMethods,
    String? createdAt,
  }) =>
      SingleAdvertisment(
        id: id ?? this.id,
        customeId: customeId ?? this.customeId,
        title: title ?? this.title,
        desc: desc ?? this.desc,
        price: price ?? this.price,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        category: category ?? this.category,
        attributes: attributes ?? this.attributes,
        city: city ?? this.city,
        isOffer: isOffer ?? this.isOffer,
        offerPrice: offerPrice ?? this.offerPrice,
        offerStartDatetime: offerStartDatetime ?? this.offerStartDatetime,
        offerEndDatetime: offerEndDatetime ?? this.offerEndDatetime,
        facebook: facebook ?? this.facebook,
        youtube: youtube ?? this.youtube,
        twitter: twitter ?? this.twitter,
        instagram: instagram ?? this.instagram,
        mainImage: mainImage ?? this.mainImage,
        album: album ?? this.album,
        video: video ?? this.video,
        user: user ?? this.user,
        checkFollwing: checkFollwing ?? this.checkFollwing,
        checkIfFavourite: checkIfFavourite ?? this.checkIfFavourite,
        visits: visits ?? this.visits,
        paymentMethods: paymentMethods ?? this.paymentMethods,
        createdAt: createdAt ?? this.createdAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['custome_id'] = customeId;
    map['title'] = title;
    map['desc'] = desc;
    map['price'] = price;
    map['phone'] = phone;
    map['country'] = country;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    map['city'] = city;
    map['is_offer'] = isOffer;
    map['offer_price'] = offerPrice;
    map['offer_start_datetime'] = offerStartDatetime;
    map['offer_end_datetime'] = offerEndDatetime;
    map['facebook'] = facebook;
    map['youtube'] = youtube;
    map['twitter'] = twitter;
    map['instagram'] = instagram;
    map['main_image'] = mainImage;
    if (album != null) {
      map['album'] = album?.map((v) => v).toList();
    }
    map['video'] = video;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['checkFollwing'] = checkFollwing;
    map['checkIfFavourite'] = checkIfFavourite;
    map['visits'] = visits;
    map['payment_methods'] = paymentMethods;
    map['created_at'] = createdAt;
    return map;
  }
}

class SingleAdvertismentUser {
  SingleAdvertismentUser({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.image,
  });

  SingleAdvertismentUser.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
  }
  num? id;
  String? name;
  String? phone;
  String? email;
  String? image;
  SingleAdvertismentUser copyWith({
    num? id,
    String? name,
    String? phone,
    String? email,
    String? image,
  }) =>
      SingleAdvertismentUser(
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        image: image ?? this.image,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    map['email'] = email;
    map['image'] = image;
    return map;
  }
}

class SingleAdvertismentCategory {
  SingleAdvertismentCategory({
    this.id,
    this.title,
    this.content,
    this.logo,
  });

  SingleAdvertismentCategory.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    logo = json['logo'];
  }
  num? id;
  String? title;
  String? content;
  String? logo;
  SingleAdvertismentCategory copyWith({
    num? id,
    String? title,
    String? content,
    String? logo,
  }) =>
      SingleAdvertismentCategory(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        logo: logo ?? this.logo,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['content'] = content;
    map['logo'] = logo;
    return map;
  }
}
