import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFLavor;
  final String donutPrice;
  final dynamic donutColor; // Puede ser un `MaterialColor`
  final String imageName;
  final String donutEnterprise;
  final Function (double, String) addToCart; // Función para agregar al carrito

  const DonutTile({
    super.key,
    required this.donutFLavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
    required this.donutEnterprise,
    required this.addToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            // PriceTag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[50],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(imageName),
            ),

            // Donut Text
            Text(
              donutFLavor,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Text(
              donutEnterprise,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),

            // Love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                  ),

                  //  Botón de texto con `GestureDetector`
                  GestureDetector(
                    onTap: () {
                      addToCart(double.parse(donutPrice), donutFLavor); // Llamamos a la función cuando se presiona
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.blue, // Hace que se vea más interactivo
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
