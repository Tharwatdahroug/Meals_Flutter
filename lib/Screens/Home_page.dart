import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return myHomePage();
  }

}
class myHomePage extends State<homePage>{
   // Map<String, bool> _filters = {
  //   'gluten': false,
  //   'lactose': false,
  //   'vegan': false,
  //   'vegetarian': false,
  // };
  // List<Meal> _availableMeals = Datas_MEALS;
  // // List<Meal> _favoriteMeals = [];

  // void _setFilters(Map<String, bool> filterData) {
  //   setState(() {
  //     _filters = filterData;

  //     _availableMeals = Datas_MEALS.where((meal) {
  //       if (_filters['gluten'] && !meal.isGlutenFree) {
  //         return false;
  //       }
  //       if (_filters['lactose'] && !meal.isLactoseFree) {
  //         return false;
  //       }
  //       if (_filters['vegan'] && !meal.isVegan) {
  //         return false;
  //       }
  //       if (_filters['vegetarian'] && !meal.isVegetarian) {
  //         return false;
  //       }
  //       return true;
  //     }).toList();
  //   });
  // }

  // void _toggleFavorite(String mealId) {
  //   final existingIndex =
  //       _favoriteMeals.indexWhere((meal) => meal.id == mealId);
  //   if (existingIndex >= 0) {
  //     setState(() {
  //       _favoriteMeals.removeAt(existingIndex);
  //     });
  //   } else {
  //     setState(() {
  //       _favoriteMeals.add(
  //         Datas_MEALS.firstWhere((meal) => meal.id == mealId),
  //       );
  //     });
  //   }
  // }

  // bool _isMealFavorite(String id) {
  //   return _favoriteMeals.any((meal) => meal.id == id);
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("sarwat"),
centerTitle: true,
      ),
      body: Center(
        child: Text("srwwta"),
      ),
    );
  }

}