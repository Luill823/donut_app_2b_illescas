import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double, String) addToCart;
  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Strawberry", "Dunkin", "50", Colors.blue, "lib/images/fres.png"],
    ["Red fruits", "Starbucks", "90", Colors.red, "lib/images/taro.png"],
    ["Green juice", "Starbucks", "85", Colors.purple, "lib/images/jug.png"],
    ["Kiwi", "Italian coffee", "60", Colors.brown, "lib/images/kiwi.png"],
    ["Oreo", "DQ", "35", Colors.blue, "lib/images/dairi.png"],
    ["Capuccino", "Oxxo", "30", Colors.red, "lib/images/cofi.png"],
    ["Vanilla", "Walmart", "40", Colors.purple, "lib/images/vain.png"],
    ["Choco", "Walmart", "38", Colors.brown, "lib/images/choco.png"]
  ];

  PizzaTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    // Para acomodar elementos en cuadricula
    return GridView.builder(
        //Cuantos elementos tengo
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(8.0),
        //Prepa 1: Organiza como distribuir elementos en la cuadricula
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Numero de colummnas
            crossAxisCount: 2,
            //Relación de aspecto (Proporción)
            childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFLavor: donutsOnSale[index][0],
            donutEnterprise: donutsOnSale [index][1],
            donutPrice: donutsOnSale [index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4], 
            addToCart: addToCart,
          );
        });
  }
}