part of 'fetch_book_cubit.dart';

abstract class FetchBookState {}

class FetchBookInitial extends FetchBookState {}
class FetchBookLoading extends FetchBookState {}
class FetchBookSuccess extends FetchBookState {
  final List<BookModel> books;
   FetchBookSuccess(this.books);
}
class FetchBookFail extends FetchBookState {
  final String errorMeasege;
   FetchBookFail({required this.errorMeasege});
}
