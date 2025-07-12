import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = "/HomeView";
  static const kSearchView = "/SearchView";
  static const kBookDetailsView = "/BookDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kBookDetailsView, builder: (context, state) =>
          BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplement>()),
            child: BookDetailsView(),
          )),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
