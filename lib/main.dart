import 'package:flutter/material.dart';

void main() {
  runApp(const CakeMenuApp());
}

class CakeMenuApp extends StatelessWidget {
  const CakeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,

          centerTitle: true,

          title: const Text(
            "Sweet Cake Bakery",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Container(
          color: Colors.pink.shade50,

          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),

                const Icon(
                  Icons.cake,
                  color: Colors.pink,
                  size: 60,
                ),

                const SizedBox(height: 10),

                const Text(
                  "Our Signature Cakes",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),

                const SizedBox(height: 20),

                cakeCard(
                  "assets/images/chocolate_cake.jpeg",
                  "Chocolate Cake",
                  "RM18.90",
                ),

                cakeCard(
                  "assets/images/strawberry_cake.jpeg",
                  "Strawberry Cake",
                  "RM20.90",
                ),

                cakeCard(
                  "assets/images/cheesecake.jpeg",
                  "Cheesecake",
                  "RM22.90",
                ),

                cakeCard(
                  "assets/images/red_velvet_cake.jpeg",
                  "Red Velvet Cake",
                  "RM24.90",
                ),

                cakeCard(
                  "assets/images/carrot_cake.jpeg",
                  "Carrot Cake",
                  "RM23.90",
                ),

                cakeCard(
                  "assets/images/vanilla_cake.jpeg",
                  "Vanilla Cake",
                  "RM19.90",
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget cakeCard(
  String imagePath,
  String cakeName,
  String price,
) {
  return Card(
    margin: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),

    elevation: 5,

    child: Padding(
      padding: const EdgeInsets.all(10),

      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                Text(
                  cakeName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),

                    SizedBox(width: 5),

                    Text(
                      "Customer Favourite",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}