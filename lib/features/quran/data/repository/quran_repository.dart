import 'package:either_dart/src/either.dart';
import 'package:quran_app/core/exceptions/failure.dart';
import 'package:quran_app/features/quran/data/data_source/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/data_source/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/data_source/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/mappers/surahs_mapper.dart';
import 'package:quran_app/features/quran/domain/entity/sura_entity.dart';
import 'package:quran_app/features/quran/domain/repository/base_quran_repository.dart';

class QuranRepository extends BaseQuranRepository {
  final BaseQuranRemoteDataSource baseQuranRemoteDataSource;

  QuranRepository(this.baseQuranRemoteDataSource);

  @override
  Future<Either<Failure, List<SurahEntity>>> getQuran()async {

    try{
      var res = await baseQuranRemoteDataSource.getQuran();
      return Right(res.map((e) => SurahMapper.mapToSurahEntity(e),).toList());
    }on TypeError catch(e){
      print(e.stackTrace);

      throw e;
    }
    catch (e){
      return Left(CustomFailure(error: e.toString()));
    }

  }
}
