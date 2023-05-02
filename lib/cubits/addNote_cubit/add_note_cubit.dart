import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Models/note_model.dart';

import '../../Constants/main_const.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

addNote(NoteModel note) async{
  emit(AddNoteLoading());
   try {
     var box = Hive.box(kNoteBox);
     await box.add(note);
     emit(AddNoteSuccess());
   } catch (e) {
      emit(AddNoteError(message: e.toString()));
   }

}

}
