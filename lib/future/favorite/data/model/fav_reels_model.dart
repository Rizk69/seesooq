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
    user = json['user'];
    createdAt = json['created_at'];
  }
  num? id;
  num? reelId;
  String? video;
  dynamic user;
  String? createdAt;
  Data copyWith({
    num? id,
    num? reelId,
    String? video,
    dynamic user,
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
    map['user'] = user;
    map['created_at'] = createdAt;
    return map;
  }
}
