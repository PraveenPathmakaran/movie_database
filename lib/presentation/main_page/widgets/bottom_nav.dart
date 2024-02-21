import 'package:flutter/material.dart';

ValueNotifier<int> indexChangedNotifier = ValueNotifier(2);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangedNotifier,
        builder: (context, int value, _) {
          return BottomNavigationBar(
            currentIndex: value,
            onTap: (index) => indexChangedNotifier.value = index,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "New & Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast Laughs"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
            ],
          );
        });
  }
}
