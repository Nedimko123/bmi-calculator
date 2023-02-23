// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  final String e;
  const ErrorBox({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(e),
    );
  }
}
