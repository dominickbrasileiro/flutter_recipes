import 'package:flutter/material.dart';
import 'package:flutter_recipes/screens/recipe_details_screen.dart';

import 'screens/tabs_screen.dart';
import 'screens/category_recipes_screen.dart';

import 'utils/app_routes.dart';

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
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORY_RECIPES: (ctx) => CategoryRecipesScreen(),
        AppRoutes.RECIPE_DETAILS: (ctx) => RecipeDetailsScreen(),
      },
    );
  }
}
