import 'package:flutter/material.dart';
import 'package:voyage_mada_app/View/ScreenDetail/Description.dart';
import 'package:voyage_mada_app/View/ScreenDetail/contenu_a_p_i.dart';
import 'package:voyage_mada_app/View/constante.dart';

class DetailDestination extends StatefulWidget {
  const DetailDestination({super.key});

  @override
  State<DetailDestination> createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
        child: AppBar(
          leading: const Icon(Icons.arrow_back_outlined),
          actions: const [Icon(Icons.favorite_outline)],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/mantasoa.jpg'),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContenuAPI(titre: 'Distance', value: '5km'),
                  ContenuAPI(titre: 'Temp', value: '20 C'),
                  ContenuAPI(titre: 'Rating', value: '4.8')
                ],
              ),
              //DESCRIPTION CONTENU
              const DescriptionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
