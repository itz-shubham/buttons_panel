library buttons_panel;

import 'package:flutter/material.dart';

class ButtonsPanel extends StatefulWidget {
  final int currentIndex;
  final List<Widget> children;
  final Color backgroundColor;
  final Size? size;
  final EdgeInsets? padding;
  final Axis? direction;
  final BoxDecoration? decoration;
  final BorderRadiusGeometry? borderRadius;
  final Color? foregroundColor, selectedItemBackgroundColor;
  final TextStyle? selectedTextStyle, unselectedTextStyle;
  final IconThemeData? selectedIconThemeData, unselectedIconThemeData;
  final Function(int) onTap;

  const ButtonsPanel({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.children,
    required this.backgroundColor,
    this.size,
    this.padding,
    this.decoration,
    this.foregroundColor,
    this.selectedItemBackgroundColor,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    this.selectedIconThemeData,
    this.unselectedIconThemeData,
    this.direction = Axis.horizontal,
    this.borderRadius,
  }) : assert(0 <= currentIndex && currentIndex < children.length);

  @override
  State<ButtonsPanel> createState() => _ButtonsPanelState();
}

class _ButtonsPanelState extends State<ButtonsPanel> {
  get selectedItemBackgroundColor =>
      widget.selectedItemBackgroundColor ?? Theme.of(context).primaryColor;
  get unselectedItemIconColor => Theme.of(context).primaryIconTheme.color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.direction == Axis.vertical && widget.size == null
          ? 50
          : widget.size?.width,
      height: widget.direction == Axis.vertical && widget.size == null
          ? widget.size?.height
          : 50,
      margin: widget.padding,
      decoration:
          widget.decoration ?? BoxDecoration(borderRadius: widget.borderRadius),
      clipBehavior: widget.borderRadius != null ? Clip.hardEdge : Clip.none,
      child: widget.direction == Axis.vertical
          ? Column(children: _buttons())
          : Row(children: _buttons()),
    );
  }

  List<Widget> _buttons() {
    List<Widget> list = [];
    for (var i = 0; i < widget.children.length; i++) {
      final active = widget.currentIndex == i;
      list.add(
        Expanded(
          child: GestureDetector(
            onTap: () => widget.onTap(i),
            child: ColoredBox(
              color: active
                  ? widget.selectedItemBackgroundColor ?? widget.backgroundColor
                  : widget.backgroundColor,
              child: Center(
                child: DefaultTextStyle(
                  style: (active
                          ? widget.selectedTextStyle
                          : widget.unselectedTextStyle) ??
                      TextStyle(
                        color: widget.foregroundColor,
                      ),
                  child: IconTheme(
                    data: (active
                            ? widget.selectedIconThemeData
                            : widget.unselectedIconThemeData) ??
                        IconThemeData(color: widget.foregroundColor),
                    child: widget.children[i],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    return list;
  }
}
