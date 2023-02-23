import 'package:flutter/material.dart';

class SliverLoader extends StatelessWidget {
  const SliverLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
