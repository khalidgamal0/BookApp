import 'package:bloc/bloc.dart';
import 'package:bookapp/moduels/homescreen/data/repo/HomeRepoImpl.dart';
import 'package:meta/meta.dart';
import '../../../data/model/book_model.dart';
part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepoImpl) : super(FetchSimilarBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void>fetchSimilarBook(
  {required String category}
)async{
    emit(FetchSimilarBooksLoading());
    var result=await homeRepoImpl.fetchSimillerBook(category: category);
    result.fold((FailerStates) {
      emit(FetchSimilarBooksFailer(FailerStates.toString()));
    }, (books) {
      emit(FetchSimilarBooksSuccess(books));
    });

  }
}
