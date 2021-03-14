import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryRecipesScreen extends StatelessWidget {
  final Category category;

  const CategoryRecipesScreen({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Category Recipes - ${category.id}'),
      ),
    );
  }
}
