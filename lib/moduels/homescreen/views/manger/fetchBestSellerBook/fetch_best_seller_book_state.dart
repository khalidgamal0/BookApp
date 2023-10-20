part of 'fetch_best_seller_book_cubit.dart';

@immutable
abstract class FetchBestSellerBookState {}

class FetchBestSellerBookInitial extends FetchBestSellerBookState {}
class FetchBookBestSellerLoading extends FetchBestSellerBookState {}
class FetchBookBestSellerSuccess extends FetchBestSellerBookState {
  final List<BookModel> books;
  FetchBookBestSellerSuccess(this.books);
}
class FetchBookBestSellerFail extends FetchBestSellerBookState {
  final String errorMeasege;
  FetchBookBestSellerFail(this.errorMeasege);
}
