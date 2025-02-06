import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/core/service_locator/locator.dart';
import 'package:quran_app/features/quran/domain/use_cases/get_quran_use_case.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  GetQuranUseCase getQuranUseCase = sl.get<GetQuranUseCase>();

  Future<void> getQuran() async {
    print('start');
    emit(GetQuranLoading());
    final res = await getQuranUseCase.call();
    res.fold(
      (left) {
        print(left.error);
        emit(GetQuranFailure());
      },
      (right) {
        emit(GetQuranSuccess());
      },
    );
  }
}
