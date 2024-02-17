import 'package:json_annotation/json_annotation.dart';

// deserialize
part 'sign_up_model.g.dart';

//deserialize json
SignUpModel deserializeSignUpModel(Map<String, dynamic> json) => SignUpModel.fromJson(json);

Map<String, dynamic> serializeSignUpModel(SignUpModel object) => object.toJson();

List<SignUpModel> deserializeSignUpModelList(List<Map<String, dynamic>> json) => json.map((e) => SignUpModel.fromJson(e)).toList();

List<Map<String, dynamic>> serializeSignUpModelList(List<SignUpModel> objects) => objects.map((e) => e.toJson()).toList();

//{
//     "result": "success",
//     "data": {
//         "message": "User registered successfully. OTP sent to phone.",
//         "otp": 123435
//     }
// }
@JsonSerializable()
class SignUpModel {
  SignUpModel({
    required this.result,
    required this.data,
  });

  @JsonKey(name: 'result')
  String? result;
  @JsonKey(name: 'data')
  SignUpModelData? data;

  factory SignUpModel.fromJson(Map<String, dynamic> json) => _$SignUpModelFromJson(json);

  // toJson
  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}

@JsonSerializable()
class SignUpModelData {
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'otp')
  dynamic otp;

  SignUpModelData({
    required this.message,
    required this.otp,
  });

  factory SignUpModelData.fromJson(Map<String, dynamic> json) => _$SignUpModelDataFromJson(json);

  // toJson
  Map<String, dynamic> toJson() => _$SignUpModelDataToJson(this);
}
