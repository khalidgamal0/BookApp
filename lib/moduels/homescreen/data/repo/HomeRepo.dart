import 'package:bookapp/moduels/homescreen/data/model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../shared/componnent/FailerStates.dart';

abstract class HomeRepo{

  Future<Either<Failure,List<BookModel>>>fetchBook();
  // Future<dynamic>fetchBook();
  Future<Either<Failure,List<BookModel>>>fetchBestSellerBook();
  Future<Either<Failure,List<BookModel>>>fetchSimillerBook({required String category});

}