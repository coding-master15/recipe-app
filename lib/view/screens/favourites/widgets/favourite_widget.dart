import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplefimga/view/screens/detail/recipe_details_screen.dart';

import '../../../../data/model/recipe.dart';

class FavouriteWidget extends StatefulWidget {

  final Recipe recipe;

  const FavouriteWidget({super.key, required this.recipe});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => RecipeDetailsScreen(recipe: widget.recipe)));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 1,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 155,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage(widget.recipe.image!),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black12
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 25,
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.white.withOpacity(0.8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(CupertinoIcons.timer, size: 16,),
                        const SizedBox(width: 2),
                        Text('${widget.recipe.duration}', style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                child: Text('${widget.recipe.title}', style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
