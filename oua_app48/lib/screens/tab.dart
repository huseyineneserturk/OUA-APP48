import 'package:flutter/material.dart';
import 'package:oua_app48/screens/chat.dart';
import 'package:oua_app48/screens/favorites.dart';
import 'package:oua_app48/screens/home.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // Burada her bir navigation iconu için ilgili sayfanın widget'ını ekleyin
    const HomePage(),
    const FavoritesPage(),
    const ChatPage(),
    const Text('Profil'),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomePage();
    var activePageTitle = 'Ana Sayfa';

    if (_selectedPageIndex == 1) {
      activePage = const FavoritesPage();
      activePageTitle = 'Favoriler';
    }

     if (_selectedPageIndex == 2) {
      activePage = const ChatPage();
      activePageTitle = 'Mesajlaşma';
    }

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mesajlaşma',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedPageIndex,
        backgroundColor: const Color.fromARGB(255, 241, 72, 33),
        selectedItemColor: Colors.blue, // Seçili öğenin rengi
        unselectedItemColor: Colors.grey,
        onTap: _selectPage,
      ),
    );
  }
}