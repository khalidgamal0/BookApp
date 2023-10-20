import 'package:bookapp/moduels/homescreen/data/repo/HomeRepoImpl.dart';
import 'package:bookapp/shared/componnent/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../moduels/SearchView/SearchView.dart';
import '../../moduels/SplachScreen/SplachView.dart';
import '../../moduels/homescreen/data/model/book_model.dart';
import '../../moduels/homescreen/views/HomeView/HomeView.dart';
import '../../moduels/homescreen/views/BookDetails/book_detailsView.dart';
import '../../moduels/homescreen/views/manger/fetch-similar_books/fetch_similar_books_cubit.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetails = '/BookDetails';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplachView(),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => BlocProvider(
          create: (context) => FetchSimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetails(bookModel:state.extra as BookModel,)),
    ),
  ]);
}
