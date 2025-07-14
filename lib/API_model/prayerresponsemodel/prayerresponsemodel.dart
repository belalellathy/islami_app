import 'data.dart';

class Prayerresponsemodel {
  int? code;
  String? status;
  Data? data;

  Prayerresponsemodel({this.code, this.status, this.data});

  factory Prayerresponsemodel.fromJson(Map<String, dynamic> json) {
    return Prayerresponsemodel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code,
        'status': status,
        'data': data?.toJson(),
      };
}
