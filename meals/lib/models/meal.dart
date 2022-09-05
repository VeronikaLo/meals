import 'dart:core';

enum Complexity{ //choice how difficult meal is to prepare
  Simple,
  Challenging,
  Hard
}

enum Affordability{  //choice how affordable meal is
  Affordable,
  Pricey,
  Luxurious,
}

class Meal{

  final String id;
  final List<String> category; //  shows to which category of meals this recepy belongs
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> description;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan; 

  //Constructor:

  const Meal({
    required this.id, 
    required this.category, 
    required this.title, 
    required this.imageUrl, 
    required this.ingredients, 
    required this.description, 
    required this.duration, 
    required this.complexity, 
    required this.affordability, 
    required this.isGlutenFree, 
    required this.isLactoseFree, 
    required this.isVegetarian, 
    required this.isVegan });

} 