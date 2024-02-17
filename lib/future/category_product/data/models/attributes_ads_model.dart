AttributesAdsModel deserializeAttributesAdsModel(Map<String, dynamic> json) => AttributesAdsModel.fromJson(json);
Map<String, dynamic> serializeAttributesAdsModel(AttributesAdsModel object) => object.toJson();
List<AttributesAdsModel> deserializeAttributesAdsModelList(List<Map<String, dynamic>> json) =>
    json.map((e) => AttributesAdsModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeAttributesAdsModelList(List<AttributesAdsModel> objects) => objects.map((e) => e.toJson()).toList();

class AttributesAdsModel {
  AttributesAdsModel({
    this.status,
    this.parent,
    this.attributes,
    this.msg,
  });

  AttributesAdsModel.fromJson(dynamic json) {
    status = json['status'];
    parent = json['parent'];
    if (json['attributes'] != null) {
      attributes = [];
      if (json['attributes'] is bool) {
        print('json[attributes] is bool');
        attributes?.add(Attributes.fromJson({}));
      } else {
        json['attributes'].forEach((v) {
          attributes?.add(Attributes.fromJson(v));
        });
      }
    }
    msg = json['msg'];
  }
  bool? status;
  bool? parent;
  List<Attributes>? attributes;
  String? msg;
  AttributesAdsModel copyWith({
    bool? status,
    bool? parent,
    List<Attributes>? attributes,
    String? msg,
  }) =>
      AttributesAdsModel(
        status: status ?? this.status,
        parent: parent ?? this.parent,
        attributes: attributes ?? this.attributes,
        msg: msg ?? this.msg,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['parent'] = parent;
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    map['msg'] = msg;
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
