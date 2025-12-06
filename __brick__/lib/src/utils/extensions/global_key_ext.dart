import 'package:flutter/cupertino.dart';

extension GlobalKeyExt on GlobalKey {
  Rect getWidgetRect() {
    final renderObject = currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      final size = renderObject.size;
      final pos = renderObject.localToGlobal(
        Offset.zero,
      );
      return Rect.fromLTWH(
        pos.dx,
        pos.dy,
        size.width,
        size.height,
      );
    }
    return Rect.zero;
  }
}
