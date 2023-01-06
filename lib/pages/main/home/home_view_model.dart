
import 'package:dogapp/model/animal.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel{

  List<Animal> animals = [
    Animal("1", "skip", "labrador", "7", "assets/images/dog.webp",'dogs'),
    Animal("2", "flash", "husky", "4", "assets/images/dog1.webp",'dogs'),
    Animal("3", "lucky", "goldendoodle", "2", "assets/images/dog2.webp",'dogs'),
    Animal("4", "poohbear", "poodle", "5", "assets/images/dog3.webp",'dogs'),
    Animal("5", "billy", "bordercolie", "6", "assets/images/dog4.webp",'dogs'),
    Animal("6", "tim", "chihuaha", "6", "assets/images/dog5.webp",'dogs'),
    Animal("6", "tim", "chihuaha", "6", "assets/images/dog5.webp",'cats'),
    Animal("6", "tim", "chihuaha", "6", "assets/images/dog5.webp",'cats'),
    Animal("6", "tim", "chihuaha", "6", "assets/images/dog5.webp",'cats'),
  ];
  //viewModel.animals.whereElement.species == species

  List < List<String> > tabs = [
    ["Dogs","assets/images/dog.webp" ],
    ["Cats","assets/images/cat.png" ],
    ["Hamster","assets/images/hamster.png" ],
    ["Fish","assets/images/fish.png" ],
  ];
  List < List<String> > dogs = [
    ["assets/images/dog4.png",'Jenny','Bull dog', '2 Yrs old'],
    ["assets/images/dog1.png",'Skip' , 'Golden', '1 Yrs old'],
    ["assets/images/dog2.png", "Lucky", "goldendoodle" ,'3 Yrs old' ],
    ["assets/images/dog3.png" , 'Fluffy', 'Husky', '6 Mths old'],
  ];

   String? selectedTab;
   String? selectedAnimals;

  void tabSelected(String selectAtab) {
    selectedTab = selectAtab;
    notifyListeners();
  }

  void animalSelected(String selectAnimal){
    selectedAnimals = selectAnimal;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}