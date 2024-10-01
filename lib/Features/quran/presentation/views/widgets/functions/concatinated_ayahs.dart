  import '../../../../data/models/surah_model/surah_model.dart';
import '../concatenate_ayas.dart';

ConcatenateAyas concatenateAyahs(List<SurahModel> surahs, int index) {
  ConcatenateAyas concatenateAyas = ConcatenateAyas();
  concatenateAyas.clearAyahs();
  for (var surah in surahs) {
    // Loop through each ayah in the surah
    for (var ayah in surah.ayahs!) {
      // If the ayah's page matches the current page (index + 1)
      if (ayah.page == index + 1) {
        // Add the ayah text and number to the ConcatenateAyas object
        concatenateAyas.addAyah(
          ayah: '${ayah.text} (${ayah.numberInSurah})',
        );
      }
    }
  }
  return concatenateAyas;
}
