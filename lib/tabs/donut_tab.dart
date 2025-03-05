import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"]
    
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //gridview para acomodar elementos en cuadrícula
    return GridView.builder(
      //Elementos en nuestra lista
      //Cuantos elementos tengo
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      //Prepa 1: Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
        donutFlavour: donutsOnSale[index] [0],
        donutPrice: donutsOnSale[index] [1],
        donutColor: donutsOnSale[index] [2],
        donutImage: donutsOnSale[index] [3],
        );

      });
  }
}