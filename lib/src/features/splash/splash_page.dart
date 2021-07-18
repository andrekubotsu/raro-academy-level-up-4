import 'package:animated_card/animated_card.dart';
import 'package:bloco_de_notas/src/features/home/home_page.dart';
import 'package:bloco_de_notas/src/features/notes_list/notes_list_page.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // Para garantir que a tela foi toda carregada antes de mover para próxima tela
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => NotesListPage(),
          ),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(gradient: AppColors.blueGradient),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedCard(
                direction: AnimatedCardDirection.top,
                duration: Duration(seconds: 1),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: (MediaQuery.of(context).size.height / 2) - 100,
                      child: Hero(
                        tag: "journal_icon",
                        child: Image.asset(
                          "assets/images/journal_icon.png",
                          width: 72,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Hero(
                            tag: "journal",
                            child: Image.asset(
                              "assets/images/journal.png",
                              width: 285,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 0.12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 42,
                          ),
                          Image.asset(
                            "assets/images/journal_text.png",
                            width: 240,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedCard(
                direction: AnimatedCardDirection.bottom,
                duration: Duration(seconds: 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/poweredby.png",
                        width: 63,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/images/raro_academy_logo.png",
                        width: 100,
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
