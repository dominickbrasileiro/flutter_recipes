import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_recipes_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Recipes',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 235, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        '/category-recipes': (ctx) => CategoryRecipesScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Recipes'),
      ),
      body: Center(
        child: Text('Let\'s cook!'),
      ),
    );
  }
}
