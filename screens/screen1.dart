// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:images_listview_gridview_sizer/variables/listen.dart';
import 'package:sizer/sizer.dart';
import 'package:images_listview_gridview_sizer/widgets/navigationdrawer.dart';

import '../widgets/builderitems.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    // Scaffold -> Vorlage für App-Screen von Google
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        // centertitle -> zentriert den Titel in der AppBar
        centerTitle: true,
        title: const Text("ListView.builder"),
      ),
      body: Center(
        // SingleChildScrollView -> macht den Screen scrollable,
        // wenn mehr Raum vertical benötigt wird, als verfügbar
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Heroes"),
              SizedBox(
                height: 10.h, // <----
              ),
              // ListView.builder zum generieren einer Liste
              SizedBox(
                height: 70.h, // 70% der Screenhöhe
                child: ListView.builder(
                    // itemCount -> Angabe für Anzahl der Elemente
                    // ALT: itemCount: avengersList.length,
                    // NEU: List, bestehend aus Character-Objekten (siehe listen.dart)
                    itemCount: heroes.length,
                    // itemBuilder: Vorlage für jedes einzelne Listenitem
                    itemBuilder: (BuildContext context, int index) {
                      // benutzerdefiniertes widget(siehe builderitems.dart)
                      return ListViewContainer(
                        // parameter für bild-pfad und name
                        image: heroes[index].image,
                        name: heroes[index].name,
                      );
                    }),
              ),
              SizedBox(
                height: 5.h,
              ),
              // Container zur Demonstration der SingleChildScrollView
              Container(
                height: 20.h,
                width: 80.w,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
