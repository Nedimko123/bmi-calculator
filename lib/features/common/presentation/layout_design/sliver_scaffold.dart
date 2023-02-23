// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

///default layout for our scaffold, that is bouncy
///Harder to have overflow errors

class SliverScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final Color? background;
  final Widget? drawer;
  final bool reverse;
  final Color? safeAreaColor;
  final Gradient? safeAreaGradient;
  final Widget? floatingActionButton;
  const SliverScaffold({
    Key? key,
    required this.slivers,
    this.background,
    this.drawer,
    this.reverse = false,
    this.safeAreaColor,
    this.safeAreaGradient,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      backgroundColor: background,
      body: Container(
        decoration:
            BoxDecoration(color: safeAreaColor, gradient: safeAreaGradient),
        child: SafeArea(
          child: CustomScrollView(
            reverse: reverse,
            physics: bouncyAlwaysScrollablePsyhics,
            slivers: slivers,
          ),
        ),
      ),
    );
  }
}

//use this psyhics
const ScrollPhysics bouncyAlwaysScrollablePsyhics =
    AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());
