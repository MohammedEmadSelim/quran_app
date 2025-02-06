import 'package:get_it/get_it.dart';
import 'package:quran_app/features/quran/data/data_source/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/repository/quran_repository.dart';
import 'package:quran_app/features/quran/domain/use_cases/get_quran_use_case.dart';

GetIt sl = GetIt.instance;
Future <void>init()async{
  sl.registerSingleton<QuranRemoteDataSource>(QuranRemoteDataSource());
  sl.registerSingleton<QuranRepository>(QuranRepository(sl.get<QuranRemoteDataSource>()));
  sl.registerSingleton<GetQuranUseCase>(GetQuranUseCase(sl.get<QuranRepository>()));
}