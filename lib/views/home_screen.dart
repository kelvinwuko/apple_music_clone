import 'dart:ui';

import 'package:apple_music_clone/views/library_screen.dart';
import 'package:apple_music_clone/views/radio_screen.dart';
import 'package:apple_music_clone/views/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController inputTextController = TextEditingController();
  int _currentIndex = 0;
  final List<Widget> screens = [
    const LibraryScreen(),
    const RadioScreen(),
    const SearchScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        bottomNavigationBar: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100.0,
              sigmaY: 100.0,
            ),
            child: Opacity(
              opacity: 0.6,
              child: BottomNavigationBar(
                backgroundColor: Colors.black,
                currentIndex: _currentIndex,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.library_music),
                    label: 'Library',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.graphic_eq),
                    label: 'Radio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                ],
                selectedItemColor: Colors.pink,
                unselectedItemColor: Colors.grey,
                onTap: (index) {
                  _onItemTap(index);
                },
              ),
            ),
          ),
        ),
        body: IndexedStack(
          children: [
            const LibraryScreen(),
            const RadioScreen(),
            const SearchScreen(),
          ],
          index: _currentIndex,
        ));
  }
}
