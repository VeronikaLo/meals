import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';
import '../data.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final routesArgs = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];
    final categoryColor = routesArgs['color'];

    final filteredCategories = recipies.where((meal){
      return meal.category.contains(categoryId);}).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        centerTitle: true,
        backgroundColor: categoryColor ,
        ),
      body: ListView.builder(
        itemCount: filteredCategories.length,
        itemBuilder: (ctx, index){
          return MealItem(
          id: filteredCategories[index].id,  
          title: filteredCategories[index].title, 
          imageUrl: filteredCategories[index].imageUrl,
          duration: filteredCategories[index].duration, 
          complexity: filteredCategories[index].complexity, 
          affordability: filteredCategories[index].affordability);
        },
        ), 
    );
  }
}