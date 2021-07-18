import 'package:bloco_de_notas/src/shared/widgets/context_menu_widget/context_menu_details.dart';
import 'package:flutter/material.dart';

class ContextMenuHolderWidget extends StatefulWidget {
  final Widget child;
  final Widget menuContent;
  ContextMenuHolderWidget({
    Key? key,
    required this.child,
    required this.menuContent,
  }) : super(key: key);

  @override
  _ContextMenuHolderWidgetState createState() =>
      _ContextMenuHolderWidgetState();
}

class _ContextMenuHolderWidgetState extends State<ContextMenuHolderWidget> {
  GlobalKey containerKey = GlobalKey();
  Offset childOffset = Offset(0, 0);
  Size? childSize;

  getOffset() {
    RenderBox renderBox = containerKey.currentContext.findRenderObject();
    Size size = renderBox.size;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    setState(() {
      this.childOffset = Offset(offset.dx, offset.dy);
      childSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: containerKey,
      onLongPress: () async {
        getOffset();
        await Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 100),
                pageBuilder: (context, animation, secondaryAnimation) {
                  animation = Tween(begin: 0.0, end: 1.0).animate(animation);
                  return FadeTransition(
                      opacity: animation,
                      child: ContextMenuDetails(
                        menuContent: widget.menuContent,
                        child: widget.child,
                        childOffset: childOffset,
                        childSize: childSize,
                      ));
                },
                fullscreenDialog: true,
                opaque: false));
      },
      child: widget.child,
    );
  }
}
