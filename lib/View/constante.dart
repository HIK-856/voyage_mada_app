import 'package:flutter/material.dart';

import 'ScreenDetail/contenu_a_p_i.dart';

 SizedBox ecart = const SizedBox(height: 20);

class TitreH3 extends StatelessWidget {
  String titre;
  Color? color;
  double? size;
  TitreH3({super.key, required this.titre, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      titre, //nom venant de homeController
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}


