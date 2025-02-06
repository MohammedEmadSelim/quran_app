import 'package:either_dart/either.dart';
import 'package:quran_app/core/exceptions/failure.dart';
import 'package:quran_app/features/quran/domain/entity/sura_entity.dart';

abstract class BaseQuranRepository {
  Future<Either<Failure, List<SurahEntity>>> getQuran();

}