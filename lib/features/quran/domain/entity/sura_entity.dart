import 'package:quran_app/features/quran/domain/entity/ayah_entity.dart';

class SurahEntity{

  final int number;

  SurahEntity(this.number, this.name, this.englishName,
      this.englishNameTranslation, this.revelationType, this.ayahs);

  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<AyahEntity> ayahs;



}