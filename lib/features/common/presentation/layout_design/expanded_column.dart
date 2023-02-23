import 'package:flutter/material.dart';

///Ignores height of the children, use padding
///use this if  you want every child in a column to be flexible with a custom flex ratio

class ExpandedColumn extends StatelessWidget {
  final List<Widget> children;
  final List<int> flexChildrenRatio;
  final EdgeInsets padding;
  final CrossAxisAlignment? crossAxisAlignment;
  const ExpandedColumn({
    Key? key,
    required this.children,
    this.flexChildrenRatio = const [],
    this.padding = const EdgeInsets.all(0),
    this.crossAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < children.length; i++)
          Expanded(
              flex: flexChildrenRatio.length == children.length
                  ? flexChildrenRatio[i]
                  : 1,
              child: Padding(
                padding: padding,
                child: children[i],
              )),
      ],
    );
  }
}
