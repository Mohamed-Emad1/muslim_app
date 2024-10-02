import 'package:dartz/dartz.dart';
import 'package:muslim_app/Features/doa/data/entities/doa_entity.dart';

import '../../../../core/errors/failure.dart';

abstract class DoaRepo {
  Future<Either<Failure, List<DoaEntity>>> getDoa();
}