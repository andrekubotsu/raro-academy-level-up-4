import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

class AddNewNoteButton extends StatelessWidget {
  final void Function() onTap;

  const AddNewNoteButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 18,
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0, 1),
                spreadRadius: 0,
              ),
              BoxShadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0, 6),
                spreadRadius: 0,
              ),
              BoxShadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(0.20),
                offset: Offset(0, 3),
                spreadRadius: -1,
              ),
            ]),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
