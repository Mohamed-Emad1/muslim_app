import 'package:hive/hive.dart';
part 'ayah.g.dart';
@HiveType(typeId: 1)
class Ayah {
  @HiveField(0)
  int? number;
 @HiveField(1)
  String? audio;
@HiveField(2)
  List<dynamic>? audioSecondary;
@HiveField(3)
  String? text;
@HiveField(4)
  int? numberInSurah;
@HiveField(5)
  int? juz;
@HiveField(6)
  int? manzil;
@HiveField(7)
  int? page;
@HiveField(8)
  int? ruku;
@HiveField(9)
  int? hizbQuarter;
@HiveField(10)
  bool? sajda;

  Ayah({
    this.number,
    this.audio,
    this.audioSecondary,
    this.text,
    this.numberInSurah,
    this.juz,
    this.manzil,
    this.page,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

factory Ayah.fromJson(Map<String, dynamic> json) {
    bool? sajda;
    if (json['sajda'] is bool) {
      // If sajda is a boolean
      sajda = json['sajda'] as bool?;
    } else if (json['sajda'] is Map<String, dynamic>) {
      // If sajda is an object, you can access its properties
      sajda = json['sajda']['obligatory'] as bool?;
    }

    return Ayah(
      number: json['number'] as int?,
      audio: json['audio'] as String?,
      audioSecondary: json['audioSecondary'] as List<dynamic>?,
      text: json['text'] as String?,
      numberInSurah: json['numberInSurah'] as int?,
      juz: json['juz'] as int?,
      manzil: json['manzil'] as int?,
      page: json['page'] as int?,
      ruku: json['ruku'] as int?,
      hizbQuarter: json['hizbQuarter'] as int?,
      sajda: sajda, // Pass the calculated sajda value here
    );
  }


  Map<String, dynamic> toJson() => {
        'number': number,
        'audio': audio,
        'audioSecondary': audioSecondary,
        'text': text,
        'numberInSurah': numberInSurah,
        'juz': juz,
        'manzil': manzil,
        'page': page,
        'ruku': ruku,
        'hizbQuarter': hizbQuarter,
        'sajda': sajda,
      };
}
