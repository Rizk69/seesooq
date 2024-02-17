PackagesModel deserializePackagesModel(Map<String, dynamic> json) => PackagesModel.fromJson(json);
Map<String, dynamic> serializePackagesModel(PackagesModel object) => object.toJson();
List<PackagesModel> deserializePackagesModelList(List<Map<String, dynamic>> json) => json.map((e) => PackagesModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializePackagesModelList(List<PackagesModel> objects) => objects.map((e) => e.toJson()).toList();

class PackagesModel {
  PackagesModel({
    this.packages,
  });

  PackagesModel.fromJson(dynamic json) {
    packages = json['packages'] != null ? Packages.fromJson(json['packages']) : null;
  }
  Packages? packages;
  PackagesModel copyWith({
    Packages? packages,
  }) =>
      PackagesModel(
        packages: packages ?? this.packages,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (packages != null) {
      map['packages'] = packages?.toJson();
    }
    return map;
  }
}

class Packages {
  Packages({
    this.packagesData,
  });

  Packages.fromJson(dynamic json) {
    if (json['packages_data'] != null) {
      packagesData = [];
      json['packages_data'].forEach((v) {
        packagesData?.add(PackagesData.fromJson(v));
      });
    }
  }
  List<PackagesData>? packagesData;
  Packages copyWith({
    List<PackagesData>? packagesData,
  }) =>
      Packages(
        packagesData: packagesData ?? this.packagesData,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (packagesData != null) {
      map['packages_data'] = packagesData?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class PackagesData {
  PackagesData({
    this.id,
    this.packageName,
    this.packageIcon,
    this.price,
    this.days,
    this.attributes,
    this.color,
  });

  PackagesData.fromJson(dynamic json) {
    id = json['id'];
    packageName = json['package_name'];
    packageIcon = json['package_icon'];
    color = json['color'];
    price = json['price'];
    days = json['days'];
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
  }
  num? id;
  String? packageName;
  String? packageIcon;
  String? price;
  String? color;
  String? days;
  List<Attributes>? attributes;
  PackagesData copyWith({
    num? id,
    String? packageName,
    String? packageIcon,
    String? price,
    String? color,
    String? days,
    List<Attributes>? attributes,
  }) =>
      PackagesData(
        id: id ?? this.id,
        packageName: packageName ?? this.packageName,
        packageIcon: packageIcon ?? this.packageIcon,
        price: price ?? this.price,
        color: color ?? this.color,
        days: days ?? this.days,
        attributes: attributes ?? this.attributes,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['package_name'] = packageName;
    map['package_icon'] = packageIcon;
    map['price'] = price;
    map['color'] = color;
    map['days'] = days;
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Attributes {
  Attributes({
    this.id,
    this.attributeName,
    this.attributeValue,
  });

  Attributes.fromJson(dynamic json) {
    id = json['id'];
    attributeName = json['attribute_name'];
    attributeValue = json['attribute_value'];
  }
  num? id;
  String? attributeName;
  String? attributeValue;
  Attributes copyWith({
    num? id,
    String? attributeName,
    String? attributeValue,
  }) =>
      Attributes(
        id: id ?? this.id,
        attributeName: attributeName ?? this.attributeName,
        attributeValue: attributeValue ?? this.attributeValue,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['attribute_name'] = attributeName;
    map['attribute_value'] = attributeValue;
    return map;
  }
}
