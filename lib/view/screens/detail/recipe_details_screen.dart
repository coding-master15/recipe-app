import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/model/ingredient.dart';
import '../../../data/model/recipe.dart';

class RecipeDetailsScreen extends StatefulWidget {

  final Recipe recipe;
  const RecipeDetailsScreen({super.key, required this.recipe});

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {

  late List<Ingredient> ingredients;

  @override
  void initState() {
    super.initState();

    //ingredients = widget.recipe.ingredients ?? [];
    ingredients = [
      Ingredient(name: 'Sate Ayam', description: 'For lunch'),
      Ingredient(name: 'Bakso', description: 'For Sauce'),
      Ingredient(name: 'Nasi padang', description: 'For Meat'),
      Ingredient(name: 'Soto', description: 'For Meat'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: const Text('Recipe Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.recipe.image!),
                  fit: BoxFit.cover,
                )
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: Icon(Icons.share_outlined, size: 20,),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('${widget.recipe.title}', style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),),
                  const SizedBox(height: 24,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.timer, size: 17,),
                            const SizedBox(width: 3.5),
                            Text('${widget.recipe.duration}', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.drop, size: 17,),
                            const SizedBox(width: 3.5),
                            Text('${widget.recipe.calories}', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: .2,
                          )
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () {

                                },
                                child: Icon(CupertinoIcons.minus, size: 20, color: Theme.of(context).primaryColor,)),
                            SizedBox(
                              width: 45,
                              child: Center(
                                child: Text('1', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {

                                },
                                child: Icon(CupertinoIcons.add, size: 20, color: Theme.of(context).primaryColor,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Ingredients',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),),
                        ListView.builder(itemBuilder: (_, index) {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 4),child: Text('${index+1}', style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),)),
                              Checkbox(value: false, onChanged: (val) {

                              }),
                              Expanded(
                                child: ListTile(
                                  title: Text('${ingredients[index].name}'),
                                  subtitle: Text('${ingredients[index].description}', style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13,
                                  ),),
                                ),
                              ),
                            ],
                          );
                        }, shrinkWrap: true, itemCount: ingredients.length, physics: const NeverScrollableScrollPhysics(),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
