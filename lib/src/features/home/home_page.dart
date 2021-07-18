import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/app_text_styles.dart';
import 'package:bloco_de_notas/src/shared/widgets/add_new_note_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: AppColors.blueGradient,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.80,
                    child: Image.asset(
                      "assets/images/boy_with_phone_bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "journal_icon",
                        child: Image.asset(
                          "assets/images/journal_icon.png",
                          width: 58,
                        ),
                      ),
                      Hero(
                        tag: "journal",
                        child: Image.asset(
                          "assets/images/journal.png",
                          width: 205,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 28,
                          bottom: 110,
                          left: 40,
                          right: 40,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                "Não importa onde você\nesteja! Guarde suas ideias pra depois ;)",
                                style: AppTextStyles.darkPurple24w400Roboto),
                            SizedBox(
                              height: 24,
                            ),
                            Text("Comece agora a criar as suas notas!",
                                style: AppTextStyles.cyan16w400Roboto)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: AddNewNoteButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => NewNotePage(),
                ),
              );
            },
          )),
    );
  }
}
