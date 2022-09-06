import 'package:flutter/material.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/screens/categoryList_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color.fromARGB(255, 235, 54, 114), 
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254,229,1 ),
        fontFamily: "Raleway",
        textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 20.0, fontFamily: "RobotoCondensed", fontWeight: FontWeight.bold),
      //headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1:  TextStyle(
            color: Color.fromRGBO(20,51,51,1),
          ),
          bodyText2: TextStyle( 
            color: Color.fromRGBO(20,51,51,1),
          ),
      ),

      ),
      home: const TabsScreen(),
      routes: {
        '/category_list':(context) => const CategoryListScreen(),
        '/detail_screen':(context) => const MealDetailScreen(),
      },
    );
  }
}


