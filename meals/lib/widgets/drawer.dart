import 'package:flutter/material.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color:Colors.amber,
          child:  Text("Let's cook!", style: TextStyle(
            color: Theme. of(context).primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),),
        ),
        const SizedBox(height: 30,),
        ListTile(
          leading: const Icon(Icons.restaurant, size: 26,),
          title: const Text("Meals", style: TextStyle(
            fontFamily: "RobotoCondensed",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          onTap: (){ Navigator.of(context).pushReplacementNamed('/');},
        ),
        ListTile(
          leading: const Icon(Icons.settings, size: 26,),
          title: const Text("Filters", style: TextStyle(
            fontFamily: "RobotoCondensed",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          onTap: (){ Navigator.of(context).pushReplacementNamed('/filters');},
        ),
      ],
      ),
    );
  }
}