class ConcatenateAyas {
  final List<String> _ayahs = [];

  addAyah({required String ayah}) {
    _ayahs.add(ayah);
  }

  String concatenateAyahs() {
    return _ayahs.join(" ");
  }

  void clearAyahs() {
    _ayahs.clear();
  }
}
