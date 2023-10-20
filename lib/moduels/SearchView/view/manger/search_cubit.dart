import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../homescreen/data/model/book_model.dart';
import '../../data/repos/search_repo.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {

  SearchCubit(this.searchRepo) : super(SearchInitial());
  SearchRepo searchRepo;
  List<BookModel> books =[];

  Future<void> fetchBooksSearch(String searchText) async {
    emit(SearchLoading());
    var fetchBooksSearchResult = await searchRepo.fetchSearchBooks(searchName:searchText );
    fetchBooksSearchResult.fold(
          (failure) {
        emit(SearchFailure(failure.errorMessage));
      },
          (r) {
        books=r;
        emit(SearchSuccess(books));
      },
    );
  }
}
