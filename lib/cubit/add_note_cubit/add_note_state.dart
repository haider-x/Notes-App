part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}
class AddNoteLoading extends AddNoteState{}
class AddNoteSucess extends AddNoteState{}
class AddNoteFailure extends AddNoteState{
  final String errMessage ;

  AddNoteFailure({required this.errMessage});
}
