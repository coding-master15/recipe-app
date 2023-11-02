import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplefimga/data/model/ingredient.dart';
import 'package:samplefimga/view/screens/favourites/widgets/favourite_widget.dart';

import '../../../data/model/recipe.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {

  List<Recipe> recipes = [
    Recipe(title: 'Lotus Leaf Glutinous Rice Lotus Leaf Glutinous Rice', calories: '250 cal', duration: '46 min', image: 'https://travelforfoodhub.com/wp-content/uploads/2021/03/7-Small-Steps-toward-a-Healthy-Diet.jpg'),
    Recipe(title: 'BBQ Pork Puff', calories: '250 cal', duration: '46 min', image: 'https://travelforfoodhub.com/wp-content/uploads/2021/03/7-Small-Steps-toward-a-Healthy-Diet.jpg'),
    Recipe(title: 'BBQ Pork Puff', calories: '250 cal', duration: '46 min', image: 'https://travelforfoodhub.com/wp-content/uploads/2021/03/7-Small-Steps-toward-a-Healthy-Diet.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('Favourites'),
        actions: [
          IconButton(onPressed: () {

          },icon: Icon(CupertinoIcons.chat_bubble_text, size: 26,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DropdownButton(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Poppins'
                ),
                items: [
                DropdownMenuItem(child: Text('My Recipe List 1')),
              ], onChanged: (val) {

              },
                underline: Container(),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: .5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(
                      maxWidth: 40,
                    ),
                    prefixIcon: Center(child: Icon(CupertinoIcons.search, color: Colors.grey, size: 21,)),
                    suffixIconConstraints: BoxConstraints(
                      maxWidth: 40,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.sort, color: Colors.grey, size: 21,),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Search recipe',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    )
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                return FavouriteWidget(recipe: recipes[index]);
              }, shrinkWrap: true, itemCount: recipes.length,),
            ],
          ),
        ),
      ),
    );
  }
}
