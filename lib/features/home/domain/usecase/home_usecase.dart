import 'package:act_hub_training1/core/error_handler/error_handler.dart';
import 'package:act_hub_training1/core/use_case/base_use_case.dart';
import 'package:act_hub_training1/features/home/domain/model/home_model.dart';
import 'package:act_hub_training1/features/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeUseCase implements BaseOutUseCase {
  final HomeRepository _homeRepository;

  HomeUseCase(this._homeRepository);

  @override
  Future<Either<Failure, HomeModel>> execute() async {
    return await _homeRepository.home();
  }
}
