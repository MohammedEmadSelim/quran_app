import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:quran_app/core/api_service/dio_service.dart';
import 'package:quran_app/core/exceptions/failure.dart';
import 'package:quran_app/features/quran/data/models/sura_model.dart';
import 'package:quran_app/features/quran/domain/entity/sura_entity.dart';

abstract class BaseQuranRemoteDataSource{
  Future< List<SurahModel>> getQuran();
}


class QuranRemoteDataSource extends BaseQuranRemoteDataSource{
  @override
  Future< List<SurahModel>> getQuran() async{
    print('remote data source');
    try{
      var res =await DioFinalHelper.getData(method: 'https://api.alquran.cloud/v1/quran/quran-uthmani');
      var data = res.data['data']['surahs'] as List;
      List<SurahModel> surahs = data.map((e) => SurahModel.fromJson(e),).toList();
      print(surahs.last.ayahs.last.page);
      print(surahs.length);

      for(int i = 1;i<10;i++){
        for(int j =0; j<4;j++){
          for(int o =0; o<surahs[j].ayahs.length;o++){
            print('$i) =====================================');
            print(surahs[j].ayahs.where((element) => element.page==i,));
            print('=====================================');


          }
        }
      }
      return surahs;
    }catch (e){

      rethrow;
    }

  }


}