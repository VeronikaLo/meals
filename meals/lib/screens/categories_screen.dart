import 'package:flutter/material.dart';
import 'package:meals/widgets/category_item.dart';
import '../data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delicious Meals"),
        centerTitle: true,),
      body: GridView(
        padding: const EdgeInsets.all(25),
      gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,),
      children: categories.map((data)=> CategoryItem(data.title, data.color, data.id)).toList(),
      ),
    );
  }
}