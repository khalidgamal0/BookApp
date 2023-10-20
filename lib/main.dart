import 'package:bookapp/moduels/homescreen/data/repo/HomeRepoImpl.dart';
import 'package:bookapp/shared/bloc_oserver.dart';
import 'package:bookapp/shared/componnent/app_roter.dart';
import 'package:bookapp/shared/componnent/service_locator.dart';
import 'package:bookapp/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'moduels/homescreen/views/manger/fetchBestSellerBook/fetch_best_seller_book_cubit.dart';
import 'moduels/homescreen/views/manger/fetchBook/fetch_book_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const Bookly());
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();

}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>FetchBookCubit(getIt.get<HomeRepoImpl>())..fetchBook() ,),
        BlocProvider(create: (context) =>FetchBestSellerBookCubit(getIt.get<HomeRepoImpl>())..fetchBestBook() ,),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData
              .dark()
              .textTheme),
        ),
      ),
    );
  }

}


