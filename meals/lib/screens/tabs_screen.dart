import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorites_screen.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  //List of pages we want to display
  final List _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavoritesScreen(), 'title': 'Your Favorites'},
  
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){
      setState(() {
        _selectedPageIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(_pages[_selectedPageIndex]['title'],), centerTitle: true, backgroundColor: Theme.of(context).primaryColor),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items:  [
          BottomNavigationBarItem(icon: const Icon(Icons.category), label: "Categories", backgroundColor: Theme.of(context).primaryColor ),
          BottomNavigationBarItem(icon: const Icon(Icons.star),label: "Favorites", backgroundColor: Theme.of(context).primaryColor ),
        ],),
    );
  }
}