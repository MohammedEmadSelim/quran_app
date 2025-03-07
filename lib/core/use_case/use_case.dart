import 'package:either_dart/either.dart';
import 'package:quran_app/core/exceptions/failure.dart';

abstract class UseCase<Entity> {
  Future<Either<Failure, Entity>> call();
}

abstract class UseCaseWithParam<Entity, ParamEntity> {
  Future<Either<Failure, Entity>> call(ParamEntity paramEntity);
}
