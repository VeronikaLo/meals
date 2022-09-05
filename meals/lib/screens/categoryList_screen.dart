import 'package:flutter/material.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final routesArgs = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];
    final categoryColor = routesArgs['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        centerTitle: true,
        backgroundColor: categoryColor ,
        ),
      body: const Center(child: Text("Hallo")), 
    );
  }
}