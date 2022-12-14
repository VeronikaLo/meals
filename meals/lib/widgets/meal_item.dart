import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({super.key,required this.id, required this.title, required this.imageUrl, required this.duration, required this.complexity, required this.affordability});

// a geter to display an enum
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
      return "Simple";
      break;

      case Complexity.Challenging:
      return "Challenging";
      break;

      case Complexity.Hard:
      return "Hard";
      break;

      default: return "Unknown";
    }
  }

  // a geter to display an enum
  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
      return "Affordable";
      break;

      case Affordability.Pricey:
      return "Pricey";
      break;

      case Affordability.Luxurious:
      return "Expensive";
      break;

      default: return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.pushNamed(context, '/detail_screen', arguments: id);},
      child:  Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
        child: Column(children: [
          Stack(children:  [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 300,
                padding:  const EdgeInsets.symmetric(vertical: 5, horizontal:20 ),
                color: Colors.black26,
                child: Text(title,
                  softWrap: true,
                  overflow: TextOverflow.fade, 
                  style: const TextStyle(
                  fontSize: 26, 
                  color: Colors.white,
                  ),),
              ),),
          ],),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Row(children: [
                const Icon(Icons.schedule),
                const SizedBox(width:6),
                Text('$duration min'),
              ],),
              Row(children: [
                const Icon(Icons.work),
                const SizedBox(width:6),
                Text(complexityText),
              ],),
              Row(children: [
                const Icon(Icons.attach_money),
                const SizedBox(width:6),
                Text(affordabilityText),
              ],),
            ],)),
        ],),
      ),
    );
  }
}