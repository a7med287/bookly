import 'package:bookly/features/home/presentation/views/widgets/similer_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text("You can also like"),
        const SizedBox(height: 20),
        SimilarBooksListView(),
      ],
    );
  }
}
