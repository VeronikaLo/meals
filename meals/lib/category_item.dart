import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;


  const CategoryItem(this.title, this.color, this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.of(context).pushNamed('/category_list', arguments: {'id': id, 'title': title, 'color': color},);},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15) ,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient( colors:[
            color.withOpacity(0.5),
            color],
            begin: Alignment.topLeft ,
            end: Alignment.bottomRight, ) ) ,
        child: Text(title, style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
