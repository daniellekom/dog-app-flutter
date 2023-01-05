
import 'package:dogapp/model/animal.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel{

  List<Animal> animal = [
    Animal("1", "skip", "labrador", "7", "assets/images/dog.webp"),
    Animal("2", "flash", "husky", "4", "assets/images/dog1.webp"),
    Animal("3", "lucky", "goldendoodle", "2", "assets/images/dog2.webp"),
    Animal("4", "poohbear", "poodle", "5", "assets/images/dog3.webp"),
    Animal("5", "billy", "bordercolie", "6", "assets/images/dog4.webp"),
    Animal("6", "tim", "chihuaha", "6", "assets/images/dog5.webp"),
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}