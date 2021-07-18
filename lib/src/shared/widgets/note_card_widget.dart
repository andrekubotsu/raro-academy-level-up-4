import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/context_menu_widget/context_menu_holder.dart';
import 'package:flutter/material.dart';

class NoteCardWidget extends StatefulWidget {
  final String titleText;
  final Color noteColor;
  final bool isFavorite;
  final bool hasAttachedFile;
  final bool isScheduled;
  final String noteText;
  final String date;

  const NoteCardWidget({
    Key? key,
    required this.titleText,
    required this.noteColor,
    required this.isFavorite,
    required this.hasAttachedFile,
    required this.isScheduled,
    required this.noteText,
    required this.date,
  }) : super(key: key);

  @override
  _NoteCardWidgetState createState() => _NoteCardWidgetState();
}

class _NoteCardWidgetState extends State<NoteCardWidget> {
  @override
  Widget build(BuildContext context) {
    return ContextMenuHolderWidget(
      menuContent: Text('teste'),
      child: Card(
        color: AppColors.lightGrey,
        shadowColor: Colors.black,
        elevation: 2,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.titleText,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "Roboto"),
                ),
              ),
              decoration: BoxDecoration(
                  color: widget.noteColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        spreadRadius: 0),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.14),
                        offset: Offset(0, 2),
                        blurRadius: 2,
                        spreadRadius: 0),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        offset: Offset(0, 3),
                        blurRadius: 1,
                        spreadRadius: -2),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: widget.isFavorite,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.black.withOpacity(0.54),
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Visibility(
                      visible: widget.hasAttachedFile,
                      child: Icon(Icons.attach_file_outlined,
                          color: Colors.black.withOpacity(0.54), size: 18),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Visibility(
                      visible: widget.isScheduled,
                      child: Icon(Icons.date_range,
                          color: Colors.black.withOpacity(0.54), size: 18),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
                  widget.noteText,
                  style: TextStyle(
                      height: 1.4,
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  "Criação ${widget.date}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 1.4,
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
