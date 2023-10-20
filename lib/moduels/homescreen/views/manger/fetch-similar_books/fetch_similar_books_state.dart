part of 'fetch_similar_books_cubit.dart';

@immutable
abstract class FetchSimilarBooksState {}

class FetchSimilarBooksInitial extends FetchSimilarBooksState {}
class FetchSimilarBooksLoading extends FetchSimilarBooksState {}
class FetchSimilarBooksSuccess extends FetchSimilarBooksState {
 final List<BookModel> bookModel;
  FetchSimilarBooksSuccess(this.bookModel);
}
class FetchSimilarBooksFailer extends FetchSimilarBooksState {
  final String errorMessage;
  FetchSimilarBooksFailer(this.errorMessage);
}
