part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class SimilarBooksInitial extends SimilarBooksState {

}
final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> booksList;

  SimilarBooksSuccess({required this.booksList});
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailure({required this.errorMessage});
}

