import 'radio.dart';

class Radioresponsemodel {
  List<Radio>? radios;

  Radioresponsemodel({this.radios});

  factory Radioresponsemodel.fromJson(Map<String, dynamic> json) {
    return Radioresponsemodel(
      radios: (json['radios'] as List<dynamic>?)
          ?.map((e) => Radio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'radios': radios?.map((e) => e.toJson()).toList(),
      };
}
