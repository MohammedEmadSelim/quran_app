import 'package:either_dart/src/either.dart';
import 'package:quran_app/core/exceptions/failure.dart';
import 'package:quran_app/core/use_case/use_case.dart';
import 'package:quran_app/features/quran/domain/entity/sura_entity.dart';
import 'package:quran_app/features/quran/domain/repository/base_quran_repository.dart';

class GetQuranUseCase extends UseCase<List<SurahEntity>> {

  final BaseQuranRepository baseQuranRepository;


  GetQuranUseCase(this.baseQuranRepository);

  @override
  Future<Either<Failure, List<SurahEntity>>> call() {
  return baseQuranRepository.getQuran();
  }



}
