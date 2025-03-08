import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutStore;
  final String donutPrice;
  final Color donutColor;
  final String donutImage;

  const DonutTile({
    super.key,
    required this.donutFlavour,
    required this.donutStore,
    required this.donutPrice,
    required this.donutColor,
    required this.donutImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Price Tag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor.withOpacity(0.4),
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
                      color: donutColor.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
            // Donut Image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Image.asset(donutImage),
            ),
            // Donut Flavour
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                donutFlavour,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            // Store Name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                donutStore,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            // Favorite and Add button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Heart Icon
                  const Icon(Icons.favorite_border, size: 24, color: Colors.black),
                  // Add Text Button
                  GestureDetector(
                    onTap: () {
                      // Acción al presionar "Add"
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
