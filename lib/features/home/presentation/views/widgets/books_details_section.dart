import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_actions.dart';
import 'custom_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .22,
            vertical: 16,
          ),
          child: CustomBookImage(
            urlImage: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          maxLines: 3,
          overflow: TextOverflow.clip,
          bookModel.volumeInfo.title ?? "",
          style: Styles.textStyle30.copyWith(
          ),

          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 1,
           overflow: TextOverflow.clip,
           bookModel.volumeInfo.authors?[0]??"None",
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 16),
         RatingBook(bookModel: bookModel,),

        const SizedBox(height: 32),
        const BooksAction(),
      ],
    );
  }
}
