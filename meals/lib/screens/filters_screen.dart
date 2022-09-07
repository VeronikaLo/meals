import 'package:flutter/material.dart';
import 'package:meals/widgets/drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;
  bool _isVegetarian = false;

  Widget _buildSwitchListTile(String title, String description, bool currentValue,  Function(bool?) updateValue){
    return SwitchListTile(
            title:  Text(title),
            subtitle:  Text(description) ,
            value: currentValue, 
            onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"), 
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,),
      drawer: const DrawerMain(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text('Adjust your meal selection', style: Theme.of(context).textTheme.titleLarge),
        ), 
        Expanded(child: ListView(children: [
          // gluten-free filter
          _buildSwitchListTile(
            'Gluten-free', 
            'Only include gluten-free meals', 
            _isGlutenFree, 
            (newValue){
              setState(() {
                _isGlutenFree = newValue!;
              });
            }),

          // lactose-free filter  
            _buildSwitchListTile(
            'Lactose-free', 
            'Only include lactose-free meals', 
            _isLactoseFree, 
            (newValue){
              setState(() {
                _isLactoseFree = newValue!;
              });
            }),

          // vegetarian filter  
            _buildSwitchListTile(
            'Vegetarian', 
            'Only include vegetarian meals', 
            _isVegetarian, 
            (newValue){
              setState(() {
                _isVegetarian = newValue!;
              });
            }),

          // vegan filter  
            _buildSwitchListTile(
            'Vegan', 
            'Only include vegan meals', 
            _isVegan, 
            (newValue){
              setState(() {
                _isVegan = newValue!;
              });
            }),
        ]),),
      ]),);
  }
}

