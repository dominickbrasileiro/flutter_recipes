import 'package:flutter/material.dart';
import 'package:flutter_recipes/components/recipe_item.dart';
import 'package:flutter_recipes/data/dummy_data.dart';

import '../models/category.dart';

class CategoryRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    final categoryRecipes = DUMMY_RECIPES
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
