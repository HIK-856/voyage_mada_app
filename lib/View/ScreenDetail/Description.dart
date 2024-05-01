import 'package:flutter/material.dart';
import 'package:voyage_mada_app/View/constante.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool showFullText = false; //to check if text is < 3 lignes
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ecart,
          TitreH3(
            titre: 'Description',
            size: 18,
            color: Colors.black,
          ),
          Text(
            'En raison de sa beauté naturelle et de son accessibilité depuis la capitale, le lac Mantasoa est une destination prisée pour les activités récréatives telles que la pêche, le canotage et les pique-niques en famille. Les visiteurs peuvent louer des pédalos ou des kayaks pour explorer le lac et profiter de la tranquillité de ses eaux.Le lac Mantasoa est un réservoir créé par l\'homme. Il a été construit dans les années 1930 sous le gouvernement colonial français pour fournir de l\'eau potable à la ville d\'Antananarivo, la capitale de Madagascar, ainsi que pour l\'irrigation des terres agricoles environnantes.Le lac Mantasoa attire également les touristes pour son cadre paisible et ses paysages pittoresques. Des infrastructures touristiques telles que des hôtels, des restaurants et des zones de camping sont disponibles dans la région pour accueillir les visiteurs souhaitant passer la nuit à proximité du lac.',
            style: const TextStyle(height: 1.5),
            maxLines: showFullText ? null : 3,
          ),
          //read more should be placed after the text,
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                setState(() {
                  showFullText = !showFullText;
                });
              },
              child: TitreH3(
                titre: showFullText ? 'Read Less' : 'Read more',
                color: Colors.blue,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
