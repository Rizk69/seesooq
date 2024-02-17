import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

NotificationModel deserializeNotificationModel(Map<String, dynamic> json) => NotificationModel.fromJson(json);
Map<String, dynamic> serializeNotificationModel(NotificationModel object) => object.toJson();
List<NotificationModel> deserializeNotificationModelList(List<Map<String, dynamic>> json) => json.map((e) => NotificationModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeNotificationModelList(List<NotificationModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class NotificationModel {
  NotificationModel(
      {this.id,
      this.orderId,
      this.customerId,
      this.sellerId,
      this.title,
      this.url,
      this.description,
      this.readStatus,
      this.superAdminReadStatus,
      this.createdAt,
      this.updatedAt,
      this.order,
      this.userType,
      this.type});

  int? id;
  @JsonKey(name: "order_id")
  dynamic orderId;
  @JsonKey(name: "customer_id")
  int? customerId;
  @JsonKey(name: "seller_id")
  dynamic sellerId;
  String? title;
  String? url;
  dynamic description;
  @JsonKey(name: "read_status")
  int? readStatus;
  @JsonKey(name: "super_admin_read_status")
  int? superAdminReadStatus;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "update_at")
  DateTime? updatedAt;
  dynamic order;
  @JsonKey(name: "type_user")
  String? userType;
  @JsonKey(name: "type")
  String? type;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
