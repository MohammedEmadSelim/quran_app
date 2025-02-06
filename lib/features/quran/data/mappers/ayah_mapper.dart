import 'package:quran_app/features/quran/data/models/aya_model.dart';
import 'package:quran_app/features/quran/domain/entity/ayah_entity.dart';

class AyahMapper {
  static AyahEntity mapToAyahEntity(AyahModel ayah) => AyahEntity(
      ayah.number,
      ayah.text,
      ayah.numberInSurah,
      ayah.juz,
      ayah.manzil,
      ayah.page,
      ayah.ruku,
      ayah.hizbQuarter,
      ayah.sajda);
}
