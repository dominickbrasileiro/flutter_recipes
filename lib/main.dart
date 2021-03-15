import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'screens/category_recipes_screen.dart';
import 'screens/recipe_details_screen.dart';
import 'screens/settings_screen.dart';

import 'utils/app_routes.dart';

import 'models/recipe.dart';
import 'models/settings.dart';
import 'data/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings settings = Settings();
  List<Recipe> _availableRecipes = DUMMY_RECIPES;

  void _filterRecipes(Settings settings) {
    this.settings = settings;
    setState(() {
      _availableRecipes = DUMMY_RECIPES.where((recipe) {
        final filterGluten = settings.isGlutenFree && !recipe.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !recipe.isLactoseFree;
        final filterVegan = settings.isVegan && !recipe.isVegan;
        final filterVegetarian = settings.isVegetarian && !recipe.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

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
        AppRoutes.CATEGORY_RECIPES: (ctx) => CategoryRecipesScreen(
              recipes: _availableRecipes,
            ),
        AppRoutes.RECIPE_DETAILS: (ctx) => RecipeDetailsScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(
              settings: settings,
              onSettingsChanged: _filterRecipes,
            ),
      },
    );
  }
}
