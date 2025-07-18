part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailure({required this.errorMessage});
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> booksList;

  const NewestBooksSuccess({required this.booksList});
}
