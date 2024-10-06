import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.tittle, required this.meals});
  final String tittle;
  final List<Meal> meals;
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
        itemBuilder: (context, index) => Text(
          meals[index].title,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: content,
    );
  }
}
