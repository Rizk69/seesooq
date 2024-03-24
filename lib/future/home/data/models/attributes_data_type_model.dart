class AttributesDataTypeModel {
  AttributesDataTypeModel({
    this.value,
    this.attribute,
  });

  AttributesDataTypeModel.fromJson(dynamic json) {
    value = json['value'];
    attribute = json['attribute'] != null ? Attribute.fromJson(json['attribute']) : null;
  }
  String? value;
  Attribute? attribute;
  AttributesDataTypeModel copyWith({
    String? value,
    Attribute? attribute,
  }) =>
      AttributesDataTypeModel(
        value: value ?? this.value,
        attribute: attribute ?? this.attribute,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    if (attribute != null) {
      map['attribute'] = attribute?.toJson();
    }
    return map;
  }
}

class Attribute {
  Attribute({
    this.id,
    this.title,
    this.type,
  });

  Attribute.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
  }
  num? id;
  String? title;
  String? type;
  Attribute copyWith({
    num? id,
    String? title,
    String? type,
  }) =>
      Attribute(
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['type'] = type;
    return map;
  }
}
