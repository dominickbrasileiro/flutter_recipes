import 'package:flutter/material.dart';
import 'package:flutter_recipes/components/recipe_item.dart';

import '../models/category.dart';
import '../models/recipe.dart';

class CategoryRecipesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  const CategoryRecipesScreen({
    Key key,
    @required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    final categoryRecipes = recipes
        .where((recipe) => recipe.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryRecipes.length,
        itemBuilder: (ctx, index) {
          return RecipeItem(
            recipe: categoryRecipes[index],
          );
        },
      ),
    );
  }
}
