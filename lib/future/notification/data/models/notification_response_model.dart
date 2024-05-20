NotificationResponseModel deserializeNotificationResponseModel(Map<String, dynamic> json) => NotificationResponseModel.fromJson(json);

class NotificationResponseModel {
  NotificationResponseModel({
    this.result,
    this.data,
  });

  NotificationResponseModel.fromJson(dynamic json) {
    result = json['result'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? result;
  Data? data;
  NotificationResponseModel copyWith({
    String? result,
    Data? data,
  }) =>
      NotificationResponseModel(
        result: result ?? this.result,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    this.notifications,
    this.pagination,
  });

  Data.fromJson(dynamic json) {
    if (json['notifications'] != null) {
      notifications = [];
      json['notifications'].forEach((v) {
        notifications?.add(Notifications.fromJson(v));
      });
    }
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }
  List<Notifications>? notifications;
  Pagination? pagination;
  Data copyWith({
    List<Notifications>? notifications,
    Pagination? pagination,
  }) =>
      Data(
        notifications: notifications ?? this.notifications,
        pagination: pagination ?? this.pagination,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (notifications != null) {
      map['notifications'] = notifications?.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    return map;
  }
}

class Pagination {
  Pagination({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  Pagination.fromJson(dynamic json) {
    total = json['total'];
    perPage = json['perPage'];
    currentPage = json['currentPage'];
    lastPage = json['lastPage'];
    nextPageUrl = json['nextPageUrl'];
    prevPageUrl = json['prevPageUrl'];
  }
  num? total;
  num? perPage;
  num? currentPage;
  num? lastPage;
  dynamic nextPageUrl;
  dynamic prevPageUrl;
  Pagination copyWith({
    num? total,
    num? perPage,
    num? currentPage,
    num? lastPage,
    dynamic nextPageUrl,
    dynamic prevPageUrl,
  }) =>
      Pagination(
        total: total ?? this.total,
        perPage: perPage ?? this.perPage,
        currentPage: currentPage ?? this.currentPage,
        lastPage: lastPage ?? this.lastPage,
        nextPageUrl: nextPageUrl ?? this.nextPageUrl,
        prevPageUrl: prevPageUrl ?? this.prevPageUrl,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['perPage'] = perPage;
    map['currentPage'] = currentPage;
    map['lastPage'] = lastPage;
    map['nextPageUrl'] = nextPageUrl;
    map['prevPageUrl'] = prevPageUrl;
    return map;
  }
}

class Notifications {
  Notifications({
    this.title,
    this.body,
    this.icon,
    this.url,
    this.readAt,
    this.created,
    this.createdAt,
  });

  Notifications.fromJson(dynamic json) {
    title = json['title'];
    body = json['body'];
    icon = json['icon'];
    url = json['url'];
    readAt = json['read_at'];
    created = json['created'];
    createdAt = json['created_at'];
  }
  String? title;
  String? body;
  String? icon;
  String? url;
  dynamic readAt;
  String? created;
  String? createdAt;
  Notifications copyWith({
    String? title,
    String? body,
    String? icon,
    String? url,
    dynamic readAt,
    String? created,
    String? createdAt,
  }) =>
      Notifications(
        title: title ?? this.title,
        body: body ?? this.body,
        icon: icon ?? this.icon,
        url: url ?? this.url,
        readAt: readAt ?? this.readAt,
        created: created ?? this.created,
        createdAt: createdAt ?? this.createdAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['body'] = body;
    map['icon'] = icon;
    map['url'] = url;
    map['read_at'] = readAt;
    map['created'] = created;
    map['created_at'] = createdAt;
    return map;
  }
}
