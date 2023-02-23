import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bmi_calculator/features/navbar/data/screens.dart';
import 'package:bmi_calculator/features/navbar/domain/providers.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final selectedBottomNavbarIndex =
        ref.watch(selectedBottomNavbarIndexProvider.state);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedBottomNavbarIndex.state,
          onTap: (value) => selectedBottomNavbarIndex.update((state) => value),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
      body: screens[selectedBottomNavbarIndex.state],
    );
  }
}
