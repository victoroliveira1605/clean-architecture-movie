import 'package:clean_architecture_bloc/core/error/failures.dart';
import 'package:clean_architecture_bloc/core/usecases/usecase.dart';
import 'package:clean_architecture_bloc/feature/detail/domain/entities/detail.dart';
import 'package:clean_architecture_bloc/feature/detail/domain/repositories/detail_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetDetail implements UseCase<Detail, Params> {
  final DetailRepository detailRepository;

  GetDetail(this.detailRepository);

  @override
  Future<Either<Failure, Detail>> call(Params params) async {
    return await detailRepository.getDetail(params.id);
  }
}

class Params extends Equatable {
  final int id;

  Params({
    required this.id,
  });

  @override
  List<Object> get props => [
        id,
      ];
}
