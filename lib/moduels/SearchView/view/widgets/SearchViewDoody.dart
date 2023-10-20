import 'package:bookapp/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/componnent/app_roter.dart';
import '../../../../shared/componnent/service_locator.dart';
import '../../data/repos/search_repo_implementation.dart';
import '../manger/search_cubit.dart';
import 'CustomSearchTextForm.dart';
import 'SearchListView.dart';

class SearchViewDody extends StatelessWidget {
  const SearchViewDody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<SearchCubit>(context);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kHomeView);
                          },
                          icon: const Icon(Icons.arrow_back)),
                      Expanded(child: CustomSearchTextForm(cubit: cubit)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Result',
                    style: Styles.textStyle20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: SearchListView(
                    cubit: cubit,
                  )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
