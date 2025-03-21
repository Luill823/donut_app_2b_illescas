import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  final Function(double, String) addToCart;
  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Peperoni", "Dominos", "36", Colors.blue, "lib/images/peperoni.png"],
    ["Carnivorous", "Messinas", "40", Colors.red, "lib/images/carnivora.png"],
    ["Vegetarian", "Baleros", "30", Colors.purple, "lib/images/vegetarian.png"],
    ["Mariscos", "Costco", "80", Colors.brown, "lib/images/mar.png"],
    ["A slice", "Sams", "5", Colors.blue, "lib/images/oneslice.png"],
    ["Barbacoa", "Oxxo", "50", Colors.red, "lib/images/barba.png"],
    ["Peperoni xl", "Seven eleven", "50", Colors.purple, "lib/images/xl.png"],
    ["Gourmet", "Walmart", "60", Colors.brown, "lib/images/gour.png"]
  ];

  PancakeTab({super.key, required this.addToCart});

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