import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/views/screens/meals_detail.dart';
import 'package:meal_app/views/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.tittle, required this.meals, required this.onToggleFavorite});
  final String? tittle;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  //selected Meal
  void selectedMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MealsDetailScreen(meal: meal ,onToggleFavorite: onToggleFavorite, )));
  }

  @override
  Widget build(BuildContext context) {
    //Default Value of the content if Meal is empty...
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "uh oh .. nothing here!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Try Selecting a Different category !!!! ",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          )
        ],
      ),
    );
    // if meal is not Empty......
    if (meals.isNotEmpty) {
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) =>
              MealItem(meal: meals[index], onSelectedMeal: selectedMeal));
    }
    if (tittle == null) {
      return content;
    }
    if (tittle == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle!),
      ),
      body: content,
    );
  }
}
