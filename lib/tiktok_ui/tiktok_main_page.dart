import 'package:flutter/material.dart';
import 'package:whatsapp_tiktok/tiktok_ui/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  goToPages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    Center(child: HomePage()),
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3')),
    Center(child: Text('Page 4')),
    Center(child: Text('Page 5')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: goToPages,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_rounded,
                size: 45,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User',
            ),
          ]),
    );
  }
}
