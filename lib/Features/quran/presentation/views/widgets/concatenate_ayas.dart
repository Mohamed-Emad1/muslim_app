class ConcatenateAyas {
      final List<String> _ayahs = [
  ];

  addAyah(String ayah) {
    _ayahs.add(ayah);
  }

  String concatenateAyahs() {
    return _ayahs.join(" ");
  }
}