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
  Column nomDestination = Column(
    mainAxisAlignment: MainAxisAlignment.start,
    //crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      TitreH3(
        titre: 'Mantasoa Lodge',
        size: 25,
      ),
      TitreH3(titre: 'Mantasoa Tana')
    ],
  );
  Container choixImage = Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/mantasoa.jpg'),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ));

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
            //in the image
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //nom destination dans l'image
                nomDestination,
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        choixImage,
                        ecart,
                        choixImage,
                        ecart,
                        choixImage
                      ],
                    ),
                  ),
                )
              ],
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
