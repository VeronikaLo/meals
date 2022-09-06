import 'package:flutter/material.dart';
import '../data.dart';
class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  Widget buildSectionTitle( BuildContext context, String text){
    return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text, style: Theme.of(context).textTheme.titleLarge ),);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = recipies.firstWhere((meal)=> meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title:  Text(selectedMeal.title), centerTitle: true,),
      body:  SingleChildScrollView(
        child: Column(children: [
      
          //Imafe section:
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover,),
          ),
      
          //Ingredients section
          buildSectionTitle(context, "Ingredients"),
          Container(
            height: 200,
            //width: 300,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal:30),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: ((context, index) => Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(selectedMeal.ingredients[index]),
                ),) ),
              ),
          ),
      
          //Cooking steps section
          buildSectionTitle(context, "Steps"),
          Container(
            height: 200,
            //width: 300,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal:30),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: ListView.builder(
              itemCount: selectedMeal.description.length,
              itemBuilder: ((context, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('# ${(index + 1)}'),),
                    title: Text(selectedMeal.description[index]),
                  ),
                  const Divider(),
                ],
              ) ),
              ),
          ),
        ]),
      ),
    );
  }
}