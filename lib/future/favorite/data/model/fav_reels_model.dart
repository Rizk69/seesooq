FavReelsModel deserializeFavReelsModel(Map<String, dynamic> json) => FavReelsModel.fromJson(json);

class FavReelsModel {
  FavReelsModel({
    this.data,
  });

  FavReelsModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  List<Data>? data;

  FavReelsModel copyWith({
    List<Data>? data,
  }) =>
      FavReelsModel(
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

class Data {
  Data({
    this.id,
    this.reelId,
    this.video,
    this.user,
    this.createdAt,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    reelId = json['reel_id'];
    video = json['video'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    createdAt = json['created_at'];
  }

  num? id;
  num? reelId;
  String? video;
  User? user;
  String? createdAt;

  Data copyWith({
    num? id,
    num? reelId,
    String? video,
    User? user,
    String? createdAt,
  }) =>
      Data(
        id: id ?? this.id,
        reelId: reelId ?? this.reelId,
        video: video ?? this.video,
        user: user ?? this.user,
        createdAt: createdAt ?? this.createdAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['reel_id'] = reelId;
    map['video'] = video;
    if (user != null) {
      map['user'] = user?.toJson();
    }
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
