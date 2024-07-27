import 'package:bloc/bloc.dart';
import 'package:book_store/features/Home/data/Domain/Repo/GetBookImpl.dart';
import 'package:book_store/features/Home/data/Model/BookModel.dart';
import 'package:meta/meta.dart';

part 'get_book_event.dart';
part 'get_book_state.dart';

class GetBookBloc extends Bloc<GetBookEvent, GetBookState> {
  final GetDataImpl getDataImpl;

  GetBookBloc({required this.getDataImpl}) : super(GetBookInitial()) {
    on<GetBook>(_onGetBook);
  }

  Future<void> _onGetBook(GetBook event, Emitter<GetBookState> emit) async {
    List <Book> books = [];
    emit(GetBookLoding());
    try {
      final books = await getDataImpl.getBooks();
      emit(GetBookSuccess(books));
    } catch (e) {
      emit(GetBookError(e.toString()));
    }
  }
}
