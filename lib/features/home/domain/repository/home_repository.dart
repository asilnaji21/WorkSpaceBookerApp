import 'package:act_hub_training1/core/error_handler/error_handler.dart';
import 'package:act_hub_training1/features/home/domain/model/home_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeModel>> home();
}
