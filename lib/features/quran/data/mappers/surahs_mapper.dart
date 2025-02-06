import 'package:quran_app/features/quran/data/mappers/ayah_mapper.dart';
import 'package:quran_app/features/quran/data/models/sura_model.dart';
import 'package:quran_app/features/quran/domain/entity/sura_entity.dart';

class SurahMapper {
  static SurahEntity mapToSurahEntity(SurahModel surah) => SurahEntity(
      surah.number,
      surah.name,
      surah.englishName,
      surah.englishNameTranslation,
      surah.revelationType,
      (surah.ayahs)
          .map(
            (e) => AyahMapper.mapToAyahEntity(e),
          )
          .toList());
}
