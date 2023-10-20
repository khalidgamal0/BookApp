import 'package:bookapp/moduels/SearchView/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../shared/ApiServicies.dart';
import '../../../../shared/componnent/FailerStates.dart';
import '../../../homescreen/data/model/book_model.dart';

class SearchRepoImpl implements SearchRepo {
  ApiServecies apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String searchName}) async {

      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=$searchName');
      List<BookModel> books = [];
      try{
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));

      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioException(e),
        );
      }

      return Left(
        ServerFailure(e.toString()),
      );
    }
  }
}
