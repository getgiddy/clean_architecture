import 'package:dartz/dartz.dart';

import '../../error/failure.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';
import 'usecase.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}