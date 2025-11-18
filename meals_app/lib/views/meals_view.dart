import 'package:flutter/material.dart';
import 'package:meals_app/models/meals_model.dart';
import 'package:meals_app/views/meals_details_view.dart';
import 'package:meals_app/widgets/meals_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<MealsModel> meals;
  final void Function(MealsModel meal) onToggleFavorite;

  void selectMeal(BuildContext context, MealsModel meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            MealsDetailsScreen(
              meal: meal,
              onToggleFavorite: onToggleFavorite
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyContent = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh oh....nothing here!",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      bodyContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) =>
            MealsItem(meal: meals[index], onSelectMeal: selectMeal),
      );
    }
    if (title == null) {
      return bodyContent;
    }
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: bodyContent,
    );
  }
}
