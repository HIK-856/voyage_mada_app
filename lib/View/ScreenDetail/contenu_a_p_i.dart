import 'package:flutter/material.dart';
import 'package:voyage_mada_app/View/constante.dart';

class ContenuAPI extends StatefulWidget {
  String titre;
  String value;
  ContenuAPI({super.key, required this.titre, required this.value});

  @override
  State<ContenuAPI> createState() => _ContenuAPIState();
}

class _ContenuAPIState extends State<ContenuAPI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitreH3(
                titre: widget.titre,
                size: 16,
              ),
              TitreH3(
                titre: widget.value,
                color: Colors.blue,
                size: 18,
              )
            ],
          ),
        ),
      ],
    );
  }
}
