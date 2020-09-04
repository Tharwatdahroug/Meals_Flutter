import 'package:flutter/material.dart';
import 'package:meals/Screens/data_list.dart';
import 'package:meals/Screens/meal_detal.dart';
import 'package:meals/models/data.dart';
import 'package:meals/utils/theme.dart';

import './models/meal.dart';
import 'Screens/Second_Screen.dart';
import 'Screens/flters_screen.dart';
import 'Screens/tabs_screeen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _Date_display = Datas_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFitres(Map<String, bool> _filersdata) {
    setState(() {
      _filters = _filersdata;
      _Date_display = Datas_MEALS.where((meal) {
        if (_filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  void _toggleFavorite(String mealId) {
    final existIndex = _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existIndex);
      });
       
    } else {
      setState(() {
        _favoriteMeals.add(Datas_MEALS.firstWhere((meal) => meal.id == mealId));
      });
      print(existIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: myThemeData,
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_Date_display),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(_isMealFavorite, _toggleFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFitres),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
