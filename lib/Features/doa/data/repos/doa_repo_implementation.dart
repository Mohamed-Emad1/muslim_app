import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:muslim_app/Features/doa/data/entities/doa_entity.dart';
import 'package:muslim_app/Features/doa/data/local_repo.dart';
import 'package:muslim_app/Features/doa/data/repos/doa_repo.dart';
import 'package:muslim_app/core/errors/failure.dart';

class DoaRepoImplementation extends DoaRepo {
  final LocalRepoImpl localRepo;

  DoaRepoImplementation({required this.localRepo});
  @override
  Future<Either<Failure, List<DoaEntity>>> getDoa() async {
    try {
      List<DoaEntity> doas = [];

      doas = await localRepo.getDoa();
      return Right(doas);
    } on Exception catch (e) {
      log("error ${e.toString()}");
      return Left(
          ServerFailure(message: "There was an error while fetching the data"));
    }
  }
}
