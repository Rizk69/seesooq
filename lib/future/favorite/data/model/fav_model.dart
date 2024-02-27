// create deserializeFavModel
FavModel deserializeFavModel(Map<String, dynamic> json) => FavModel.fromJson(json);

class FavModel {
  FavModel({
    this.data,
  });

  FavModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(FavData.fromJson(v));
      });
    }
  }
  List<FavData>? data;

  FavModel copyWith({
    List<FavData>? data,
  }) =>
      FavModel(
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class FavData {
  FavData({
    this.id,
    this.adId,
    this.customeId,
    this.title,
    this.desc,
    this.price,
    this.phone,
    this.country,
    this.category,
    this.city,
    this.isOffer,
    this.offerPrice,
    this.offerStartDatetime,
    this.offerEndDatetime,
    this.mainImage,
    this.album,
    this.user,
    this.visits,
    this.createdAt,
  });

  FavData.fromJson(dynamic json) {
    id = json['id'];
    adId = json['Ad_id'];
    customeId = json['custome_id'];
    title = json['title'];
    desc = json['desc'];
    price = json['price'];
    phone = json['phone'];
    country = json['country'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    city = json['city'];
    isOffer = json['is_offer'];
    offerPrice = json['offer_price'];
    offerStartDatetime = json['offer_start_datetime'];
    offerEndDatetime = json['offer_end_datetime'];
    mainImage = json['main_image'];
    if (json['album'] != null) {
      album = [];
      json['album'].forEach((v) {
        album?.add(v);
      });
    }
    user = json['user'];
    visits = json['visits'];
    createdAt = json['created_at'];
  }
  num? id;
  num? adId;
  String? customeId;
  String? title;
  String? desc;
  num? price;
  String? phone;
  dynamic country;
  Category? category;
  dynamic city;
  String? isOffer;
  dynamic offerPrice;
  dynamic offerStartDatetime;
  dynamic offerEndDatetime;
  String? mainImage;
  List<String>? album;
  dynamic user;
  dynamic visits;
  String? createdAt;
  FavData copyWith({
    num? id,
    num? adId,
    String? customeId,
    String? title,
    String? desc,
    num? price,
    String? phone,
    dynamic country,
    Category? category,
    dynamic city,
    String? isOffer,
    dynamic offerPrice,
    dynamic offerStartDatetime,
    dynamic offerEndDatetime,
    String? mainImage,
    List<String>? album,
    dynamic user,
    dynamic visits,
    String? createdAt,
  }) =>
      FavData(
        id: id ?? this.id,
        adId: adId ?? this.adId,
        customeId: customeId ?? this.customeId,
        title: title ?? this.title,
        desc: desc ?? this.desc,
        price: price ?? this.price,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        category: category ?? this.category,
        city: city ?? this.city,
        isOffer: isOffer ?? this.isOffer,
        offerPrice: offerPrice ?? this.offerPrice,
        offerStartDatetime: offerStartDatetime ?? this.offerStartDatetime,
        offerEndDatetime: offerEndDatetime ?? this.offerEndDatetime,
        mainImage: mainImage ?? this.mainImage,
        album: album ?? this.album,
        user: user ?? this.user,
        visits: visits ?? this.visits,
        createdAt: createdAt ?? this.createdAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Ad_id'] = adId;
    map['custome_id'] = customeId;
    map['title'] = title;
    map['desc'] = desc;
    map['price'] = price;
    map['phone'] = phone;
    map['country'] = country;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    map['city'] = city;
    map['is_offer'] = isOffer;
    map['offer_price'] = offerPrice;
    map['offer_start_datetime'] = offerStartDatetime;
    map['offer_end_datetime'] = offerEndDatetime;
    map['main_image'] = mainImage;
    if (album != null) {
      map['album'] = album?.map((v) => v).toList();
    }
    map['user'] = user;
    map['visits'] = visits;
    map['created_at'] = createdAt;
    return map;
  }
}

class Category {
  Category({
    this.id,
    this.title,
    this.content,
    this.logo,
  });

  Category.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    logo = json['logo'];
  }
  num? id;
  String? title;
  String? content;
  String? logo;
  Category copyWith({
    num? id,
    String? title,
    String? content,
    String? logo,
  }) =>
      Category(
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
