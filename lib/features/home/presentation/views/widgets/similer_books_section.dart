import 'package:bookly/features/home/presentation/views/widgets/similer_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("You can also like"),
        SizedBox(height: 20),
        SimilarBooksListView(),
      ],
    );
  }
}
