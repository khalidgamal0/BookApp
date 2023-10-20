import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/model/book_model.dart';
import '../../../data/repo/HomeRepoImpl.dart';

part 'fetch_best_seller_book_state.dart';

class FetchBestSellerBookCubit extends Cubit<FetchBestSellerBookState> {
  FetchBestSellerBookCubit(this.homeRepoImpl) : super(FetchBestSellerBookInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void>fetchBestBook()async{
    emit(FetchBookBestSellerLoading());
    var result=await homeRepoImpl.fetchBestSellerBook();
    result.fold((FailerStates) {
      emit(FetchBookBestSellerFail(FailerStates.toString()));
    }, (books) {
      emit(FetchBookBestSellerSuccess(books));
    });

  }
}
