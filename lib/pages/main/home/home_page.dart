import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  static const routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return widget(
      child: Center(
        child: Container(
          child: const Text("home page"),
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
