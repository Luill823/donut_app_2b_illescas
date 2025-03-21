import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double, String) addToCart;

  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Whopper", "Burger king", "30", Colors.red, "lib/images/burger11.png"],
    ["Vegetariana", "Burger king", "35", Colors.green, "lib/images/burger2.png"],
    ["Bacon", "Burger king", "40", Colors.blue, "lib/images/bacon.png"],
    ["3x meat", "Burger king", "40", Colors.brown, "lib/images/burger4.png"],
    ["Chicken special", "McDonalds", "30", Colors.yellow, "lib/images/Cspecial.png"],
    ["QuarterPound", "McDonalds", "35", Colors.red, "lib/images/QP.png"],
    ["3x special", "McDonalds", "35", Colors.purple, "lib/images/3wp.png"],
    ["Deluxe", "McDonalds", "50", Colors.brown, "lib/images/deluxe.png"]
  ];

  BurgerTab({super.key, required this.addToCart});

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
