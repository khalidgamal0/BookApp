import 'package:bookapp/moduels/homescreen/data/model/book_model.dart';
import 'package:bookapp/moduels/homescreen/data/repo/HomeRepo.dart';
import 'package:bookapp/shared/ApiServicies.dart';
import 'package:bookapp/shared/componnent/FailerStates.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServecies apiServecies;

  HomeRepoImpl(this.apiServecies);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBook() async {
    try {
      var data = await apiServecies.get(
          endPoints:'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
  // Future<List<BookModel>> fetchBook() async {
  //
  //   List<BookModel> books = [];
  //
  //   var result=  await apiServecies.get(
  //       endPoints:'volumes?Filtering=free-ebooks&q=subject:Programming');
  //   for (var item in result['items']) {
  //     books.add(BookModel.fromJson(item));}
  //   return books;
  // }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook() async {
    try {
      var data = await apiServecies.get(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=computer scince');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimillerBook(
      {required String category}) async{
    try {
      var data = await apiServecies.get(
          endPoints:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:english');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      print(e.toString());
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
