import 'package:bloc/bloc.dart';
import 'package:bookapp/moduels/homescreen/data/repo/HomeRepoImpl.dart';
import '../../../data/model/book_model.dart';
part 'fetch_book_state.dart';

class FetchBookCubit extends Cubit<FetchBookState> {
  FetchBookCubit(this.homeRepoImpl) : super(FetchBookInitial());

 final HomeRepoImpl homeRepoImpl;

  Future<void>fetchBook()async{
    emit(FetchBookLoading());
   var result= await homeRepoImpl.fetchBook();
   result.fold((Failure){
     emit(FetchBookFail(errorMeasege: Failure.errorMessage));
   }, (books){
     emit(FetchBookSuccess(books));
   });

  }
}


// Future<void>fetchBook()async{
//   emit(FetchBookLoading());
//   await homeRepoImpl.fetchBook().then((value){
//     emit(FetchBookSuccess(value));
//   }).catchError((e){
//     print(e.toString());
//   });
//
// }