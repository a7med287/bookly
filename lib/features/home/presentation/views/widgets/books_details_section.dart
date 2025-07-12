import 'package:bookly/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_actions.dart';
import 'custom_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .22,
            vertical: 16,
          ),
          child: CustomBookImage(urlImage: 'https://i.pinimg.com/1200x/74/d4/f6/74d4f6083a31a0e57675adf452cc6b27.jpg',),
        ),
        const SizedBox(height: 15),
        const Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 16),
         // RatingBook(bookModel: boo,),
        Text("replace"),
        const SizedBox(height: 32),
        const BooksAction(),
      ],
    );
  }
}
