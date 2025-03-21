import 'package:donut_app_2b_illescas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothiesTab extends StatelessWidget {
  final Function(double, String) addToCart;
  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Simple", "Dunosusa", "20", Colors.blue, "lib/images/pan1.png"],
    ["Crepe", "Costco", "35", Colors.red, "lib/images/crep.png"],
    ["IceCream Special", "Costco", "40", Colors.purple, "lib/images/IcePan.png"],
    ["Waffle", "Willis", "15", Colors.brown, "lib/images/waf.png"],
    ["Strawberry-choco", "Pronto", "17", Colors.blue, "lib/images/scc.png"],
    ["Big portion", "Oxxo", "36", Colors.red, "lib/images/Bp.png"],
    ["Caviar", "Bodega aurrera", "60", Colors.yellow, "lib/images/caviar.png"],
    ["Extra strawberry", "Bodega aurrera", "25", Colors.brown, "lib/images/Straw.png"]
  ];

  SmoothiesTab({super.key, required this.addToCart});

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