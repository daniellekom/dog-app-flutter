import 'dart:math';

import 'package:flutter/material.dart';

class AnimalTile extends StatelessWidget {
  final String iconImagePath;
  final String dogNameText;
  final String dogBreedText;
  final String dogAgeText;
  final bool isSelected;
  final VoidCallback onTap;

  const AnimalTile({
    Key? key,
    required this.iconImagePath,
    required this.dogNameText,
    required this.dogBreedText,
    required this.isSelected,
    required this.onTap,
    required this.dogAgeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: isSelected ? Colors.purple : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(child: Image.asset(iconImagePath)),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dogNameText,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold, color: isSelected ? Colors.white : Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        dogBreedText,
                        style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.grey[600]),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Text(
                          dogAgeText,
                          style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
