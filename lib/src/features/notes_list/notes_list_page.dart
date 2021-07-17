import 'dart:ui';

import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/features/notes_list/notes_list_controller.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/add_new_note_button_widget.dart';
import 'package:bloco_de_notas/src/shared/widgets/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class NotesListPage extends StatefulWidget {
  NotesListPage({Key? key}) : super(key: key);

  @override
  _NotesListPageState createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  final controller = NotesListController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            child: Image.asset(
              "assets/images/journal_logo_with_icon.png",
              scale: 1.7,
            ),
            decoration: BoxDecoration(gradient: AppColors.blueGradientAppBar),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 86),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 10),
          child: Scrollbar(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 18,
              ),
              child: StaggeredGridView.countBuilder(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                itemCount: controller.data.length,
                itemBuilder: (BuildContext context, int index) =>
                    NoteCardWidget(
                  titleText: controller.data[index]["title"],
                  noteColor: controller.data[index]["noteColor"],
                  isFavorite: controller.data[index]["isFavorite"],
                  hasAttachedFile: controller.data[index]["hasAttachedFile"],
                  isScheduled: controller.data[index]["isScheduled"],
                  noteText: controller.data[index]["noteText"],
                  date: controller.data[index]["date"],
                ),
                staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AddNewNoteButton(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => NewNotePage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
