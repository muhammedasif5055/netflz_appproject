import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';

ValueNotifier<int> indexChengeNotifire = ValueNotifier(0);

class ScreenNavigationBar extends StatelessWidget {
  const ScreenNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChengeNotifire,
      builder: (BuildContext context, dynamic newIndex, Widget? _) {
        return  BottomNavigationBar(
      currentIndex: newIndex,
      onTap: (index){
        indexChengeNotifire.value=index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedFontSize: 10,
      unselectedFontSize: 10,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.collections), label: 'New & hot'),
      BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.download_for_offline,), label: 'Downloads'),
    ]);
      },
    );
  }
}
