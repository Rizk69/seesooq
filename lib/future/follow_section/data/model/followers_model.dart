/// data : [{"id":54,"name":"ahmadbassam","phone":"0791004264","email":"ahmadbassam1002@gmail.com","image":"https://seesooq.com/images/site/user.png"}]
FollowersModel deserializeFollowersModel(Map<String, dynamic> json) => FollowersModel.fromJson(json);

class FollowersModel {
  List<Data>? _data;

  List<Data>? get data => _data;

  FollowersModel({List<Data>? data}) {
    _data = data;
  }

  FollowersModel.fromJson(dynamic json) {
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 54
/// name : "ahmadbassam"
/// phone : "0791004264"
/// email : "ahmadbassam1002@gmail.com"
/// image : "https://seesooq.com/images/site/user.png"

class Data {
  int? _id;
  String? _name;
  String? _phone;
  String? _email;
  String? _image;
  bool? _checkFollwing;

  int? get id => _id;
  String? get name => _name;
  bool? get isFollow => _checkFollwing;
  String? get phone => _phone;
  String? get email => _email;
  String? get image => _image;

  Data({int? id, String? name, String? phone, bool? isFollow, String? email, String? image}) {
    _id = id;
    _name = name;
    _phone = phone;
    _checkFollwing = isFollow;
    _email = email;
    _image = image;
  }

  Data.fromJson(dynamic json) {
    print(json);
    _id = json["id"];
    _name = json["name"];
    _phone = json["phone"];
    _email = json["email"];
    _image = json["image"];
    _checkFollwing = json["checkFollwing"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["phone"] = _phone;
    map["email"] = _email;
    map["image"] = _image;
    return map;
  }
}
