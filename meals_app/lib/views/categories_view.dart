import 'package:flutter/material.dart';
import 'package:meals_app/data/category_dummy_data.dart';
// import 'package:meals_app/data/meals_dummy_data.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/models/meals_model.dart';
import 'package:meals_app/views/meals_view.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite, required this.availableMeals});
  final void Function(MealsModel meal) onToggleFavorite;
  final List<MealsModel> availableMeals;

  void _selectCategory(BuildContext context, CategoryModel category) {
    final filteredMeals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(18),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        //availableCategories.map((category)=> CategoryGridItem(category: category))
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
