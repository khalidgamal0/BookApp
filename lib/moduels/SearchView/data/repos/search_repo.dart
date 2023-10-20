import 'package:dartz/dartz.dart';
import '../../../../shared/componnent/FailerStates.dart';
import '../../../homescreen/data/model/book_model.dart';



abstract class SearchRepo{

  Future<Either<Failure,List<BookModel>>> fetchSearchBooks({required String searchName});
}