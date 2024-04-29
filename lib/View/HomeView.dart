import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:voyage_mada_app/Controller/HomeController.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:voyage_mada_app/View/topViewWidget.dart';
import 'package:voyage_mada_app/contenuView.dart';

class HomeView extends MvcView<HomeController> {
  List<Tab> tab = [
    const Tab(text: 'Beach'),
    const Tab(text: 'Mountain'),
    const Tab(text: 'Waterfalls'),
    const Tab(text: 'Laks'),
    const Tab(text: 'Foun'),
  ];
  List<Widget> tabContent = [
    const ContenuView(),
    //const Center(child: Text('Contenu du Tab 2')),
    const Center(child: Text('Contenu du Tab 2')),
    const Center(child: Text('Contenu du Tab 3')),
    const Center(child: Text('Contenu du Tab 4')),
    const Center(child: Text('Contenu du Tab 5')),
  ];
  @override
  Widget buildView() {
    return DefaultTabController(
      initialIndex: 0,
      length: tab.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: TabBar(
              labelPadding: const EdgeInsets.only(right: 30.0),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.normal),
              dividerColor: Colors.transparent,
              indicatorPadding: const EdgeInsets.only(bottom: 5),
              indicator: const PointTabIndicator(
                  color: Colors.black,
                  position: PointTabIndicatorPosition.bottom),
              isScrollable: true,
              tabs: tab, //list tab
            ),
          ),
          title: Text(
            controller.model.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.54,
                child: TabBarView(children: tabContent)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Destination',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.menu),
              ],
            ),
            const TopDestinationViewWidget()
          ],
        ),
      ),
    );
  }
}
