import 'package:apple_music_clone/viewmodels/search_result_list_view_model.dart';
import 'package:apple_music_clone/views/home_screen.dart';
import 'package:apple_music_clone/views/library_screen.dart';
import 'package:apple_music_clone/views/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple Music Clone',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => SearchResultListViewModel(),
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
