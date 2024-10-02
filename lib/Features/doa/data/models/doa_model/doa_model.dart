import 'dua.dart';

class DoaModel {
  String? name;
  String? url;
  List<Dua>? duas;

  DoaModel({this.name, this.url, this.duas});

  factory DoaModel.fromJson(Map<String, dynamic> json) => DoaModel(
        name: json['name'] as String?,
        url: json['url'] as String?,
        duas: (json['duas'] as List<dynamic>?)
            ?.map((e) => Dua.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
        'duas': duas?.map((e) => e.toJson()).toList(),
      };
}
