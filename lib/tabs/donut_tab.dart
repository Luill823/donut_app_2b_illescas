import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double, String) addToCart;
  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Vanilla", "Walmart", "20", Colors.yellow, "lib/images/vanilla_donut.png"],
    ["Peanut", "Dunkin", "15", Colors.blue, "lib/images/peanut_donut.png"],
    ["Glassed", "Costco", "12", Colors.orange, "lib/images/glassed_donut.png"],
    ["Simpson's Donut", "Walmart", "25", Colors.yellow, "lib/images/bomberos_donut.png"]
  ];

  DonutTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFLavor: donutsOnSale[index][0],
          donutEnterprise: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          addToCart: addToCart, // <-- Pasar función al Tile
        );
      },
    );
  }
}