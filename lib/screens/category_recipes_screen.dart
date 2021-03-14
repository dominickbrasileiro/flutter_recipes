import 'package:flutter/material.dart';

class CategoryRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Center(
        child: Text('Category Recipes'),
      ),
    );
  }
}
