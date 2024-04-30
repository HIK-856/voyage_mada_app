import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:voyage_mada_app/Controller/AnimationController.dart';
import 'package:voyage_mada_app/Controller/HomeController.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:voyage_mada_app/View/contenuViewWidget.dart';
import 'package:voyage_mada_app/View/topViewWidget.dart';
import 'package:flutter_animated_icons/flutter_animated_icons.dart';

class HomeView extends MvcView<HomeController> {
// animate() => myAnimation.reverse();

  List<Tab> tab = [
    const Tab(text: 'Beach'),
    const Tab(text: 'Mountain'),
    const Tab(text: 'Waterfalls'),
    const Tab(text: 'Laks'),
    const Tab(text: 'Foun'),
  ];
  List<Widget> tabContent = [
    ContenuViewWidget(),
    //const Center(child: Text('Contenu du Tab 2')),
    const Center(child: Text('Contenu du Tab 2')),
    const Center(child: Text('Contenu du Tab 3')),
    const Center(child: Text('Contenu du Tab 4')),
    const Center(child: Text('Contenu du Tab 5')),
  ];
  SizedBox ecart = const SizedBox(height: 20);
  Row topDestination = const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Top Destination',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Icon(Icons.menu),
    ],
  );

  BottomAppBar bottomAppBar = const BottomAppBar(
      // shape: CircularNotchedRectangle(),
      notchMargin: 0,
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.heart_broken),
          Icon(Icons.heart_broken),
          Icon(Icons.person_2)
        ],
      ));
  @override
  Widget buildView() {
    return DefaultTabController(
      initialIndex: 0,
      length: tab.length,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: ClipOval(
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(color: Colors.black),
            child: const Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar, //bottom navigation bar
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
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: TabBarView(children: tabContent),
              ),
              ecart,
              topDestination,
              ecart,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                child: TopDestinationViewWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
