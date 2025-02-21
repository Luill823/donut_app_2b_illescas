import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  //dynamic será un tipo de color
  final dynamic donutColor;
  final String imageName;

  const DonutTile({super.key, required this.donutFlavour, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: donutColor[500]
    ),  
   );
  }
}