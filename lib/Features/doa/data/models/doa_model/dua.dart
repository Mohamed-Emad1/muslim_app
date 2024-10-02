class Dua {
  String? title;
  String? arabic;
  String? transliteration;
  String? translation;
  String? reference;

  Dua({
    this.title,
    this.arabic,
    this.transliteration,
    this.translation,
    this.reference,
  });

  factory Dua.fromJson(Map<String, dynamic> json) => Dua(
        title: json['title'] as String?,
        arabic: json['arabic'] as String?,
        transliteration: json['transliteration'] as String?,
        translation: json['translation'] as String?,
        reference: json['reference'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'arabic': arabic,
        'transliteration': transliteration,
        'translation': translation,
        'reference': reference,
      };
}
