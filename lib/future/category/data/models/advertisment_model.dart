import 'package:json_annotation/json_annotation.dart';

part 'advertisment_model.g.dart';

AdvertisementModel deserializeAdvertisementModel(Map<String, dynamic> json) => AdvertisementModel.fromJson(json);
MyAdsModel deserializeMyAdsModel(Map<String, dynamic> json) => MyAdsModel.fromJson(json);
Map<String, dynamic> serializeAdvertisementModel(AdvertisementModel object) => object.toJson();
List<AdvertisementModel> deserializeAdvertisementModelList(List<Map<String, dynamic>> json) =>
    json.map((e) => AdvertisementModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeAdvertisementModelList(List<AdvertisementModel> objects) => objects.map((e) => e.toJson()).toList();

class AdvertisementModel {
  AdvertisementModel({
    this.data,
    this.links,
    this.meta,
    this.result,
    this.message,
  });

  AdvertisementModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    result = json['result'];
    message = json['message'];
  }
  List<Data>? data;
  Links? links;
  Meta? meta;
  String? result;
  String? message;
  AdvertisementModel copyWith({
    List<Data>? data,
    Links? links,
    Meta? meta,
    String? result,
    String? message,
  }) =>
      AdvertisementModel(
        data: data ?? this.data,
        links: links ?? this.links,
        meta: meta ?? this.meta,
        result: result ?? this.result,
        message: message ?? this.message,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      map['links'] = links?.toJson();
    }
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    map['result'] = result;
    map['message'] = message;
    return map;
  }
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  Meta.fromJson(dynamic json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }
  num? currentPage;
  num? from;
  num? lastPage;
  List<Links>? links;
  String? path;
  num? perPage;
  num? to;
  num? total;
  Meta copyWith({
    num? currentPage,
    num? from,
    num? lastPage,
    List<Links>? links,
    String? path,
    num? perPage,
    num? to,
    num? total,
  }) =>
      Meta(
        currentPage: currentPage ?? this.currentPage,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        links: links ?? this.links,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        to: to ?? this.to,
        total: total ?? this.total,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    map['from'] = from;
    map['last_page'] = lastPage;
    if (links != null) {
      map['links'] = links?.map((v) => v.toJson()).toList();
    }
    map['path'] = path;
    map['per_page'] = perPage;
    map['to'] = to;
    map['total'] = total;
    return map;
  }
}

class Links {
  Links({
    this.url,
    this.label,
    this.active,
  });

  Links.fromJson(dynamic json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
  String? url;
  String? label;
  bool? active;
  Links copyWith({
    dynamic url,
    String? label,
    bool? active,
  }) =>
      Links(
        url: url ?? this.url,
        label: label ?? this.label,
        active: active ?? this.active,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['label'] = label;
    map['active'] = active;
    return map;
  }
}

class Data {
  Data({
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
    this.album,
    this.video,
    this.user,
    this.checkFollwing,
    this.checkIfFavourite,
    this.visits,
    this.paymentMethods,
    this.createdAt,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    customeId = json['custome_id'];
    title = json['title'];
    desc = json['desc'];
    price = json['price'];
    phone = json['phone'];
    country = json['country'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
    city = json['city'];
    isOffer = json['is_offer'];
    offerPrice = json['offer_price'];
    offerStartDatetime = json['offer_start_datetime'];
    offerEndDatetime = json['offer_end_datetime'];
    facebook = json['facebook'];
    youtube = json['youtube'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    album = json['album'];
    video = json['video'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
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
  Category? category;
  List<Attributes>? attributes;
  dynamic city;
  String? isOffer;
  dynamic offerPrice;
  dynamic offerStartDatetime;
  dynamic offerEndDatetime;
  String? facebook;
  String? youtube;
  String? twitter;
  String? instagram;
  String? album;
  String? video;
  User? user;
  dynamic checkFollwing;
  bool? checkIfFavourite;
  String? visits;
  String? paymentMethods;
  String? createdAt;
  Data copyWith({
    num? id,
    String? customeId,
    String? title,
    String? desc,
    num? price,
    String? phone,
    dynamic country,
    Category? category,
    List<Attributes>? attributes,
    dynamic city,
    String? isOffer,
    dynamic offerPrice,
    dynamic offerStartDatetime,
    dynamic offerEndDatetime,
    String? facebook,
    String? youtube,
    String? twitter,
    String? instagram,
    String? album,
    String? video,
    User? user,
    bool? checkFollwing,
    bool? checkIfFavourite,
    String? visits,
    String? paymentMethods,
    String? createdAt,
  }) =>
      Data(
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
    map['album'] = album;
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

class User {
  User({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.image,
  });

  User.fromJson(dynamic json) {
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
  User copyWith({
    num? id,
    String? name,
    String? phone,
    String? email,
    String? image,
  }) =>
      User(
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

class Attributes {
  Attributes({
    this.id,
    this.title,
    this.type,
    this.children,
  });

  Attributes.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
  }
  num? id;
  String? title;
  String? type;
  List<Children>? children;
  Attributes copyWith({
    num? id,
    String? title,
    String? type,
    List<Children>? children,
  }) =>
      Attributes(
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
        children: children ?? this.children,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['type'] = type;
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Children {
  Children({
    this.id,
    this.title,
    this.type,
    this.children,
  });

  Children.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
  }
  num? id;
  String? title;
  String? type;
  List<Children>? children;
  Children copyWith({
    num? id,
    String? title,
    String? type,
    List<Children>? children,
  }) =>
      Children(
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
        children: children ?? this.children,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['type'] = type;
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
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

@JsonSerializable()
class MyAdsModel {
  @JsonKey(name: 'ads')
  final AdvertisementModel? advertisementModel;

  MyAdsModel({this.advertisementModel});

  factory MyAdsModel.fromJson(Map<String, dynamic> json) => _$MyAdsModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyAdsModelToJson(this);
}
