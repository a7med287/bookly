import 'package:bookly/features/home/presentation/views/widgets/similer_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also like"),
        SizedBox(height: 20),
        SimilarBooksListView(),
      ],
    );
  }
}
