import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_searc_list_view.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 12),
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text("Results", style: Styles.textStyle18),
          SizedBox(height: 16),
          CustomSearchListView(),
        ],
      ),
    );
  }
}