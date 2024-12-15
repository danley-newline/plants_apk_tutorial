import 'package:flutter/material.dart';
import 'package:my_plant_app/constants.dart';
import 'package:my_plant_app/models/plants.dart';
import 'package:my_plant_app/ui/screens/widgets/plant_widget.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;

  const CartPage({super.key, required this.addedToCartPlants});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Calcul du montant total avant de construire l'interface
    int totalAmount = 0;
    for (var plant in widget.addedToCartPlants) {
      totalAmount += plant.price;
    }

    return Scaffold(
      body: widget.addedToCartPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/add-cart.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your Cart Is Empty",
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.addedToCartPlants.length,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return PlantWidgets(
                            index: index, plantList: widget.addedToCartPlants);
                      },
                    ),
                  ),
                  Column(
                    children: [
                      const Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Totals",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            '\$$totalAmount',
                            style: TextStyle(
                                fontSize: 24,
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
