// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

///Ignores width of the children, use padding
///use this if  you want every child in a row to be flexible with a custom flex ratio

class ExpandedRow extends StatelessWidget {
  final List<Widget> children;
  final List<int> flexChildrenRatio;
  final EdgeInsets padding;
  final CrossAxisAlignment? crossAxisAlignment;
  const ExpandedRow({
    Key? key,
    required this.children,
    this.flexChildrenRatio = const [],
    this.padding = const EdgeInsets.all(0),
    this.crossAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
