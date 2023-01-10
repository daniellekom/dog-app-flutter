
import 'package:dogapp/model/animal.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel{

  List<Animal> animals = [
    Animal("1", "skip", "labrador", "7", "assets/images/dog.webp",'Dogs'),
    Animal("2", "flash", "husky", "4", "assets/images/dog1.png",'Dogs'),
    Animal("3", "lucky", "goldendoodle", "2", "assets/images/dog2.png",'Dogs'),
    Animal("4", "poohbear", "poodle", "5", "assets/images/dog3.png",'Dogs'),
    Animal("5", "billy", "bordercolie", "6", "assets/images/dog4.png",'Dogs'),
    Animal("2", "Sophie", "DSH", "3", "assets/images/cat.png",'Cats'),

  ];
  //viewModel.animals.whereElement.species == species

  List < List<String> > tabs = [
    ["Dogs","assets/images/dog.webp" ],
    ["Cats","assets/images/cat.png" ],
    ["Hamster","assets/images/hamster.png" ],
    ["Fish","assets/images/fish.png" ],
  ];


   String? selectedTab;
   String? selectedAnimal;


  void setSelectedTab(String tabIclickedOn) {
    if(selectedTab == tabIclickedOn){
      selectedTab = null;
    }else{
      selectedTab = tabIclickedOn;
    }
    notifyListeners();
  }

  void setSelectedAnimal(String animaliSelected){
    if(animaliSelected == selectedAnimal){
      selectedAnimal = null;
    }else{
      selectedAnimal = animaliSelected;
    }
    notifyListeners();
  }

  List<Animal> getAnimalsForTab(String? tab){
    return animals.where((element) => element.species == tab).toList();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}