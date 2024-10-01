import 'package:hive/hive.dart';

import 'ayah.dart';
part 'surah_model.g.dart';

@HiveType(typeId: 0)
class SurahModel {
 @HiveField(0) 
  int? number;
@HiveField(1)
  String? name;
@HiveField(2)
  String? englishName;
@HiveField(3)
  String? englishNameTranslation;
@HiveField(4)
  String? revelationType;
  @HiveField(5)
  List<Ayah>? ayahs;

  SurahModel({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.ayahs,
  });

  factory SurahModel.fromJson(Map<String, dynamic> json) => SurahModel(
        number: json['number'] as int?,
        name: json['name'] as String?,
        englishName: json['englishName'] as String?,
        englishNameTranslation: json['englishNameTranslation'] as String?,
        revelationType: json['revelationType'] as String?,
        ayahs: (json['ayahs'] as List<dynamic>?)
            ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'englishNameTranslation': englishNameTranslation,
        'revelationType': revelationType,
        'ayahs': ayahs?.map((e) => e.toJson()).toList(),
      };
}
