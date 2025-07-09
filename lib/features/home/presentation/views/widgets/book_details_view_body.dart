import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custm_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(child: const SizedBox(height: 32)),
                SimilerBooksSection(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
