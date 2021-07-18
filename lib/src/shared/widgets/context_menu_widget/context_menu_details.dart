// ########################################
// Inicio de implementação baseado no artigo:
// https://retroportalstudio.medium.com/focused-pop-up-menu-in-flutter-15766d0ab414
// dos criadores do package que usei
// ########################################

import 'dart:ui';

import 'package:flutter/material.dart';

class ContextMenuDetails extends StatelessWidget {
  final Offset childOffset;
  final Size? childSize;
  final Widget menuContent;
  final Widget child;
  const ContextMenuDetails(
      {Key? key,
      required this.childOffset,
      required this.childSize,
      required this.menuContent,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final maxMenuWidth = size.width * 0.70;
    final menuHeight = size.height * 0.35;
    final leftOffset = (childOffset.dx + maxMenuWidth) < size.width
        ? childOffset.dx
        : (childOffset.dx - maxMenuWidth + childSize!.width);
    final topOffset =
        (childOffset.dy + menuHeight + childSize!.height) < size.height
            ? childOffset.dy + childSize!.height
            : childOffset.dy - menuHeight;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
                  ),
                )),
            Positioned(
              top: topOffset,
              left: leftOffset,
              child: Container(
                width: maxMenuWidth,
                height: menuHeight,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      const BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10,
                          spreadRadius: 1)
                    ]),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: menuContent,
                ),
              ),
            ),
            Positioned(
                top: childOffset.dy,
                left: childOffset.dx,
                child: AbsorbPointer(
                    absorbing: true,
                    child: Container(
                        width: childSize!.width,
                        height: childSize!.height,
                        child: child))),
          ],
        ),
      ),
    );
  }
}
