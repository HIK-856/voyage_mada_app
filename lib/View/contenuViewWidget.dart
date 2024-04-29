import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyage_mada_app/Model/contenuModel.dart';
import 'package:voyage_mada_app/Controller/HomeContenu.dart';
import 'package:flutter_mvc/flutter_mvc.dart';

class ContenuViewWidget extends StatelessWidget {
  final String nomImage;
  final String nomDestination;
  final String nomEndroit;
  const ContenuViewWidget(
      {super.key,
      required this.nomImage,
      required this.nomDestination,
      required this.nomEndroit});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.find<ContenuModel>();
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.black12,
            image: DecorationImage(
                opacity: 0.7, image: AssetImage(nomImage), fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomDestination,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        nomEndroit,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
