class ConcatenateAyas {
  final List<String> _ayahs = [];
  final _quaranCount = 114;
  int _counter = 1;

  addCounter() {
    _counter++;
  }
  getCounter() {
    return _counter;
  }

  getQuranCount() {
    return _quaranCount;
  }

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
