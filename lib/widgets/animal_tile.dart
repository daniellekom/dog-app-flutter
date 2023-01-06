import 'package:flutter/material.dart';

class AnimalTile extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final bool isSelected;
  final VoidCallback onTap;

  const AnimalTile({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(

        children: [
          Container(
            height:120,
            decoration: BoxDecoration(
              color: isSelected ? Colors.purple : Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(children: [
              ClipRRect( borderRadius: BorderRadius.circular(20), child: Image.asset(iconImagePath)),SizedBox(width: 15,),
              Text(buttonText,
                style:  TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:isSelected? Colors.white :Colors.black ),
              ),
            ],),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}