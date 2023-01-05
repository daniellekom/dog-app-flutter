import 'dart:math';

import 'package:dogapp/pages/main/home/home_view_model.dart';
import 'package:dogapp/widgets/animal_tabs.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home";
  final ScrollController controllerOne = ScrollController();

   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.purple,
                    size: 14,
                  ),
                  Text("Location"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "England, London",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    hintText: "search pets",
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
              ),
              const SizedBox(height: 15,),
              const Text(
                "Pet Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  AnimalTabs(iconImagePath: 'assets/images/dog.webp', buttonText: "Dogs"),
                  SizedBox(width: 10,),
                  AnimalTabs(iconImagePath: 'assets/images/dog.webp', buttonText: "Dogs"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget build(BuildContext context) {
//     // Using the reactive constructor gives you the traditional ViewModel
//     // binding which will execute the builder again when notifyListeners is called.
//     return ViewModelBuilder<HomeViewModel>.reactive(
//       viewModelBuilder: () => HomeViewModel(),
//       onModelReady: (viewModel) => viewModel.initialise(),
//       builder: (context, viewModel, child) => Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             viewModel.updateTitle();
//           },
//         ),
//         body: Center(
//           child: Text(viewModel.title),
//         ),
//       ),
//     );
//   }
