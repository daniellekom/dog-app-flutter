import 'package:flutter/material.dart';

class AnimalTabs extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const AnimalTabs({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(60),
          ),
          child: Row(children: [
            ClipRRect( child: Image.asset(iconImagePath),borderRadius: BorderRadius.circular(20)),SizedBox(width: 15,),
            Text(buttonText,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
          ],),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
