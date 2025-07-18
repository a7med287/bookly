import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routers.dart';
import '../../../../../core/widgets/cusrom_error_message.dart';
import 'customFeaturedLoading.dart';
import 'custom_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBookStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
              itemCount: state.booksList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.booksList[index],
                      );
                    },
                    child: CustomBookImage(
                      urlImage:
                          state
                              .booksList[index]
                              .volumeInfo
                              .imageLinks
                              .thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errMessage: state.errorMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomFeaturedLoading(),
                CustomFeaturedLoading(),
                CustomFeaturedLoading(),
              ],
            ),
          );
        }
      },
    );
  }
}
