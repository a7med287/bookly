import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'custm_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .18,
              vertical: 16,
            ),
            child: CustomBookImage(),
          ),
          SizedBox(height: 27,),
          Text("The Jungle Book",style: Styles.textStyle30,),
          SizedBox(height: 6,),
          Opacity(
            opacity: .7,
            child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),),
          ),
        ],
      ),
    );
  }
}
