import 'package:flutter/material.dart';
import 'package:core/core.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CiieccaAppBar.createAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          //TODO: Responsive design
          width: 400,
          height: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
              ),
            ],
          ),
          child: TextButton(
            child: const Text('Abrir popup'), //TODO eliminar este texto
            onPressed: () => CiieccaPopUp.showTerms(context),
          ),
        ),
      ),
    );
  }
}
