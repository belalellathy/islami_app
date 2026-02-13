import 'reciter.dart';

class Receitersresponsemodel {
  List<Reciter>? reciters;

  Receitersresponsemodel({this.reciters});

  factory Receitersresponsemodel.fromJson(Map<String, dynamic> json) {
    return Receitersresponsemodel(
      reciters: (json['reciters'] as List<dynamic>?)
          ?.map((e) => Reciter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'reciters': reciters?.map((e) => e.toJson()).toList(),
      };
}
