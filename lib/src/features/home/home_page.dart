import 'package:bloco_de_notas/src/features/home/empty_home.dart';
import 'package:bloco_de_notas/src/features/notes_list/notes_list_page.dart';
import 'package:bloco_de_notas/src/shared/models/notes_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Note> notes = <Note>[];

  @override
  Widget build(BuildContext context) {
    return notes.isEmpty ? EmptyHome() : NotesListPage();
  }
}
