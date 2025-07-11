import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBookStates extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FeaturedBooksInitial extends FeaturedBookStates {}

class FeaturedBooksLoading extends FeaturedBookStates {}

class FeaturedBooksSuccess extends FeaturedBookStates {
  final List<BookModel> booksList;

  FeaturedBooksSuccess({required this.booksList});
}

class FeaturedBooksFailure extends FeaturedBookStates {
  final String errorMessage;

  FeaturedBooksFailure({required this.errorMessage});
}
