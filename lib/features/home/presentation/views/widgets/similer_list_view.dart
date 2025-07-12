import 'package:bookly/core/widgets/cusrom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if( state is SimilarBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomBookImage(
                urlImage:
                'https://i.pinimg.com/1200x/74/d4/f6/74d4f6083a31a0e57675adf452cc6b27.jpg',
              ),
            );
          },
        ),
      );
    }else if(state is SimilarBooksFailure){
      return CustomErrorMessage(errMessage: state.errorMessage);

    }else{
      return CustomLoadingIndicator();
    }
  },
);
  }
}
