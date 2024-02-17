
PlaceTextModel deserializePlaceTextModel(Map<String, dynamic> json) =>
    PlaceTextModel.fromJson(json);
Map<String, dynamic> serializePlaceTextModel(PlaceTextModel object) =>
    object.toJson();
List<PlaceTextModel> deserializePlaceTextModelList(
    List<Map<String, dynamic>> json) =>
    json.map((e) => PlaceTextModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializePlaceTextModelList(
    List<PlaceTextModel> objects) =>
    objects.map((e) => e.toJson()).toList();


class PlaceTextModel {
  PlaceTextModel({
      this.htmlAttributions, 
      this.results, 
      this.status,});

  PlaceTextModel.fromJson(dynamic json) {
    if (json['html_attributions'] != null) {
      htmlAttributions = [];
      json['html_attributions'].forEach((v) {
        // htmlAttributions?.add(List.fromJson(v));
      });
    }
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    status = json['status'];
  }
  List<String>? htmlAttributions;
  List<Results>? results;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (htmlAttributions != null) {
      // map['html_attributions'] = htmlAttributions?.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['status'] = status;
    return map;
  }

}

class Results {
  Results({
      this.businessStatus, 
      this.formattedAddress, 
      this.geometry, 
      this.icon, 
      this.iconBackgroundColor, 
      this.iconMaskBaseUri, 
      this.name, 
      this.openingHours, 
      this.photos, 
      this.placeId, 
      this.rating, 
      this.reference, 
      this.types, 
      this.userRatingsTotal,});

  Results.fromJson(dynamic json) {
    businessStatus = json['business_status'];
    formattedAddress = json['formatted_address'];
    geometry = json['geometry'] != null ? Geometry.fromJson(json['geometry']) : null;
    icon = json['icon'];
    iconBackgroundColor = json['icon_background_color'];
    iconMaskBaseUri = json['icon_mask_base_uri'];
    name = json['name'];
    openingHours = json['opening_hours'] != null ? OpeningHours.fromJson(json['opening_hours']) : null;
    if (json['photos'] != null) {
      photos = [];
      json['photos'].forEach((v) {
        photos?.add(Photos.fromJson(v));
      });
    }
    placeId = json['place_id'];
    rating = json['rating'];
    reference = json['reference'];
    types = json['types'] != null ? json['types'].cast<String>() : [];
    userRatingsTotal = json['user_ratings_total'];
  }
  String? businessStatus;
  String? formattedAddress;
  Geometry? geometry;
  String? icon;
  String? iconBackgroundColor;
  String? iconMaskBaseUri;
  String? name;
  OpeningHours? openingHours;
  List<Photos>? photos;
  String? placeId;
  num? rating;
  String? reference;
  List<String>? types;
  num? userRatingsTotal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['business_status'] = businessStatus;
    map['formatted_address'] = formattedAddress;
    if (geometry != null) {
      map['geometry'] = geometry?.toJson();
    }
    map['icon'] = icon;
    map['icon_background_color'] = iconBackgroundColor;
    map['icon_mask_base_uri'] = iconMaskBaseUri;
    map['name'] = name;
    if (openingHours != null) {
      map['opening_hours'] = openingHours?.toJson();
    }
    if (photos != null) {
      map['photos'] = photos?.map((v) => v.toJson()).toList();
    }
    map['place_id'] = placeId;
    map['rating'] = rating;
    map['reference'] = reference;
    map['types'] = types;
    map['user_ratings_total'] = userRatingsTotal;
    return map;
  }

}

class Photos {
  Photos({
      this.height, 
      this.htmlAttributions, 
      this.photoReference, 
      this.width,});

  Photos.fromJson(dynamic json) {
    height = json['height'];
    htmlAttributions = json['html_attributions'] != null ? json['html_attributions'].cast<String>() : [];
    photoReference = json['photo_reference'];
    width = json['width'];
  }
  num? height;
  List<String>? htmlAttributions;
  String? photoReference;
  num? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['html_attributions'] = htmlAttributions;
    map['photo_reference'] = photoReference;
    map['width'] = width;
    return map;
  }

}

class OpeningHours {
  OpeningHours({
      this.openNow,});

  OpeningHours.fromJson(dynamic json) {
    openNow = json['open_now'];
  }
  bool? openNow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['open_now'] = openNow;
    return map;
  }

}

class Geometry {
  Geometry({
      this.location, 
      this.viewport,});

  Geometry.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    viewport = json['viewport'] != null ? Viewport.fromJson(json['viewport']) : null;
  }
  Location? location;
  Viewport? viewport;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    if (viewport != null) {
      map['viewport'] = viewport?.toJson();
    }
    return map;
  }

}

class Viewport {
  Viewport({
      this.northeast, 
      this.southwest,});

  Viewport.fromJson(dynamic json) {
    northeast = json['northeast'] != null ? Northeast.fromJson(json['northeast']) : null;
    southwest = json['southwest'] != null ? Southwest.fromJson(json['southwest']) : null;
  }
  Northeast? northeast;
  Southwest? southwest;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (northeast != null) {
      map['northeast'] = northeast?.toJson();
    }
    if (southwest != null) {
      map['southwest'] = southwest?.toJson();
    }
    return map;
  }

}

class Southwest {
  Southwest({
      this.lat, 
      this.lng,});

  Southwest.fromJson(dynamic json) {
    lat = json['lat'];
    lng = json['lng'];
  }
  num? lat;
  num? lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }

}

class Northeast {
  Northeast({
      this.lat, 
      this.lng,});

  Northeast.fromJson(dynamic json) {
    lat = json['lat'];
    lng = json['lng'];
  }
  num? lat;
  num? lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }

}

class Location {
  Location({
      this.lat, 
      this.lng,});

  Location.fromJson(dynamic json) {
    lat = json['lat'];
    lng = json['lng'];
  }
  num? lat;
  num? lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lng'] = lng;
    return map;
  }

}