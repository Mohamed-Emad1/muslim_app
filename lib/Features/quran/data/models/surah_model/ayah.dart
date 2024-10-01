class Ayah {
  int? number;
  String? audio;
  List<dynamic>? audioSecondary;
  String? text;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;
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
