import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.imageUrl});
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 150,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 250,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: 0,
            child: BorderedText(
              strokeWidth: 10,
              strokeColor: Colors.white,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontSize: 100,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.white,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
