import 'package:flutter/material.dart';
import 'package:my_plant_app/constants.dart';
import 'package:my_plant_app/models/plants.dart';
import 'package:my_plant_app/ui/screens/widgets/plant_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<Plant> favoritedPlants;
  const FavoritePage({super.key, required this.favoritedPlants});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: widget.favoritedPlants.isEmpty ? 
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset("assets/images/favorited.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Your Favorited Plants", style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),),
          ],
        ),
      )
       : Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height * .5,
        child: ListView.builder(
          itemCount: widget.favoritedPlants.length,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return PlantWidgets(index: index, plantList: widget.favoritedPlants);
          },),
       ),
    );
  }
}
