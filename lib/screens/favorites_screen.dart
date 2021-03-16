import 'package:flutter/material.dart';
import 'package:flutter_recipes/components/recipe_item.dart';

import '../models/recipe.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Recipe> favoriteRecipes;

  const FavoritesScreen({
    Key key,
    @required this.favoriteRecipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteRecipes.isEmpty) {
      return Center(
        child: Text('Nothing here...'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (ctx, index) {
          return RecipeItem(
            recipe: favoriteRecipes[index],
          );
        },
      );
    }
  }
}
