import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomBookImage(urlImage: 'https://i.pinimg.com/1200x/74/d4/f6/74d4f6083a31a0e57675adf452cc6b27.jpg',),
          );
        },
      ),
    );
  }
}
