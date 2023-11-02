import 'ingredient.dart';

class Recipe {
  int? id;
  String? title;
  String? image;
  String? duration;
  String? calories;
  List<Ingredient>? ingredients;

  Recipe({this.id, this.title, this.image, this.duration, this.calories, this.ingredients});

}