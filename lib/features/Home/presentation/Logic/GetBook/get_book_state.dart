part of 'get_book_bloc.dart';

@immutable
abstract class GetBookState {}

final class GetBookInitial extends GetBookState {}

final class GetBookLoding extends GetBookState {}

final class GetBookSuccess extends GetBookState {
  final List<Book> books;

  GetBookSuccess( this.books);
}
final class GetBookError extends GetBookState {
  final String error;

  GetBookError(this.error);
}
