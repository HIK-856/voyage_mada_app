import 'package:flutter/material.dart';

class ListChoix extends StatelessWidget {
  const ListChoix({super.key});

  @override
  Widget build(BuildContext context) {
    Padding choixImage = Padding(
      padding:
          const EdgeInsets.only(left: 150.0, right: 150.0, top: 10, bottom: 10),
      child: Container(
        height: 50,
        width: 70,
        decoration: const BoxDecoration(
          //color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/mantasoa.jpg'),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
    List<Widget> listeChoix = [choixImage, choixImage, choixImage];
    return Expanded(
      child: ListView.builder(
        itemCount: listeChoix.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: 90,
            //width: 20,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                listeChoix[index],
              ],
            ),
          );
        },
      ),
    );
  }
}
