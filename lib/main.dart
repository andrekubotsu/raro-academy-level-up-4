import 'package:bloco_de_notas/src/features/notes_list/notes_list_page.dart';
import 'package:bloco_de_notas/src/features/splash/splash_page.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            showTrackOnHover: true,
            interactive: true,
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(AppColors.lightPurple),
            trackColor: MaterialStateProperty.all(AppColors.lightGrey),
            radius: Radius.circular(10)),
      ),
      home: NotesListPage(),
      locale: Locale('pt', 'BR'),
    );
  }
}
