/// fav : {"fav_data":[{"id":1,"item_name":"Vehicles","image":"https://random.imagecdn.app/500/150","price":"500","days":"8"}]}
FavModel deserializeFavModel(Map<String, dynamic> json) => FavModel.fromJson(json);

class FavModel {
  Fav? _fav;

  Fav? get fav => _fav;

  FavModel({
      Fav? fav}){
    _fav = fav;
}

  FavModel.fromJson(dynamic json) {
    _fav = json["fav"] != null ? Fav.fromJson(json["fav"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_fav != null) {
      map["fav"] = _fav?.toJson();
    }
    return map;
  }

}

/// fav_data : [{"id":1,"item_name":"Vehicles","image":"https://random.imagecdn.app/500/150","price":"500","days":"8"}]

class Fav {
  List<Fav_data>? _favData;

  List<Fav_data>? get favData => _favData;

  Fav({
      List<Fav_data>? favData}){
    _favData = favData;
}

  Fav.fromJson(dynamic json) {
    if (json["fav_data"] != null) {
      _favData = [];
      json["fav_data"].forEach((v) {
        _favData?.add(Fav_data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_favData != null) {
      map["fav_data"] = _favData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// item_name : "Vehicles"
/// image : "https://random.imagecdn.app/500/150"
/// price : "500"
/// days : "8"

class Fav_data {
  int? _id;
  String? _itemName;
  String? _image;
  String? _price;
  String? _days;

  int? get id => _id;
  String? get itemName => _itemName;
  String? get image => _image;
  String? get price => _price;
  String? get days => _days;

  Fav_data({
      int? id, 
      String? itemName, 
      String? image, 
      String? price, 
      String? days}){
    _id = id;
    _itemName = itemName;
    _image = image;
    _price = price;
    _days = days;
}

  Fav_data.fromJson(dynamic json) {
    _id = json["id"];
    _itemName = json["item_name"];
    _image = json["image"];
    _price = json["price"];
    _days = json["days"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["item_name"] = _itemName;
    map["image"] = _image;
    map["price"] = _price;
    map["days"] = _days;
    return map;
  }

}