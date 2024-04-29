import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:voyage_mada_app/Controller/HomeContenu.dart';
// import 'package:voyage_mada_app/Model/contenuModel.dart';
import 'package:voyage_mada_app/View/contenuViewWidget.dart';
import 'package:voyage_mada_app/View/topViewWidget.dart';
// import 'package:flutter_mvc/flutter_mvc.dart';
// import 'package:voyage_mada_app/Controller/HomeController.dart';

class ContenuView extends StatelessWidget {
  const ContenuView({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.find<ContenuModel>();
    return Padding(
        padding: const EdgeInsets.only(
            bottom: 25.0, left: 25.0, right: 5, top: 25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContenuViewWidget(
                      nomImage: 'assets/images/mantasoa.jpg',
                      nomDestination: 'Mantasoa Lodge',
                      nomEndroit: 'Mantasoa Antananarivo'),
                  ContenuViewWidget(
                      nomImage: 'assets/images/toamasina.jpg',
                      nomDestination: '',
                      nomEndroit: ''),
                  ContenuViewWidget(
                      nomImage: 'assets/images/toliara.jpg',
                      nomDestination: '',
                      nomEndroit: '')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                ],
              ),
            ),
            // TopDestinationViewWidget()
          ],
        ));
  }
}
