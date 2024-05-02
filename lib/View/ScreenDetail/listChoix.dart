import 'package:flutter/material.dart';

class ListChoix extends StatelessWidget {
  const ListChoix({super.key});

  @override
  Widget build(BuildContext context) {
    Container choixImage = Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mantasoa.jpg'),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ));
    List<Widget> listeChoix = [choixImage, choixImage, choixImage];
    return ListView.builder(
        itemCount: listeChoix.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return listeChoix[index];
        });
  }
}
