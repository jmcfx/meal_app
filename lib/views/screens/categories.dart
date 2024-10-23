import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category_model.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/views/screens/meals.dart';
import 'package:meal_app/views/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key,  required this.availableMeals});

  final List<Meal> availableMeals;
  void _selectedCategory(BuildContext context, CategoryModel category) {
    //filtered List .....
    final filteredMeals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    //push to mealScreen...
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(
         
          tittle: category.title,
          meals: filteredMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        // loop through items in availableCategories
        for (final CategoryModel category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectedCategory(context, category);
            },
          )
      ],
    );
  }
}
