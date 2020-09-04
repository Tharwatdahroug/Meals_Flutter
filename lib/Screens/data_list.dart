import 'package:flutter/material.dart';
import 'package:meals/Widgets/Item_data.dart';
import 'package:meals/models/data.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: Data_Meal
          .map(
            (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
