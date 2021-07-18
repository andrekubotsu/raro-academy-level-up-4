import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:date_format/date_format.dart';

var inputDate = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class NotesListController {
  List data = [
    {},
    {
      "title": "Não esquecer",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": true,
      "isScheduled": true,
      "hasAttachedFile": true,
      "date": inputDate,
      "noteColor": AppColors.pink
    },
    {
      "title": "Reunião com os stakeholders",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": false,
      "isScheduled": false,
      "hasAttachedFile": true,
      "date": inputDate,
      "noteColor": AppColors.green
    },
    {
      "title": "Lembretes para o médico 2",
      "noteText":
          "Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "isFavorite": true,
      "isScheduled": true,
      "hasAttachedFile": false,
      "attchFile": "Link do arquivo?",
      "date": inputDate,
      "noteColor": AppColors.darkPurple
    },
    {
      "title": "Não esquecer nunca!",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.cyan
    },
    {
      "title": "Reunião com os stakeholders novamente",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": false,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.yellow
    },
    {
      "title": "Lembretes para o médico",
      "noteText":
          "Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.darkPurple
    },
    {
      "title": "Não esquecer",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.pink
    },
    {
      "title": "Reunião com os stakeholders",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": false,
      "isScheduled": true,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.green
    },
    {
      "title": "Lembretes para o médico 2",
      "noteText":
          "Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.darkPurple
    },
    {
      "title": "Não esquecer nunca!",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.cyan
    },
    {
      "title": "Reunião com os stakeholders novamente",
      "noteText":
          "Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua. Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.",
      "isFavorite": false,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.yellow
    },
    {
      "title": "Lembretes para o médico",
      "noteText":
          "Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "isFavorite": true,
      "isScheduled": false,
      "hasAttachedFile": false,
      "date": inputDate,
      "noteColor": AppColors.darkPurple
    },
  ];
}
