import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchBestSellerBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSuccess(booksList: books));
      },
    );
  }
}
