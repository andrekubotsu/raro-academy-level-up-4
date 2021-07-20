import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/models/notes_model.dart';
import 'package:date_format/date_format.dart';

var inputDate = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class NotesListController {
  List<Note> data = [
    Note(
        title: "Não esquecer",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: true,
        isScheduled: true,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.pink),
    Note(
        title: "Reunião com os stakeholders",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: true,
        isScheduled: false,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.green),
    Note(
        title: "Lembretes para o médico ",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: false,
        isScheduled: false,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.darkPurple),
    Note(
        title: "Não esquecer",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: true,
        isScheduled: true,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.cyan),
    Note(
        title: "Reunião com os stakeholders",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: true,
        isScheduled: false,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.pink),
    Note(
        title: "Lembretes para o médico ",
        noteText:
            "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
        isFavorite: false,
        isScheduled: false,
        hasAttachedFile: true,
        date: inputDate,
        noteColor: AppColors.yellow),
  ];
}
