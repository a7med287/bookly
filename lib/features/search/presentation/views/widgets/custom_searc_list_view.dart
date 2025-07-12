import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom:12),
          child: Text("replace"),
          // child:  BestSellerListViewItem(bookModel: null,),
        );
      },),
    );
  }
}