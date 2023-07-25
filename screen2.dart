import 'package:flutter/material.dart';
import 'package:images_listview_gridview_sizer/variables/listen.dart';
import 'package:images_listview_gridview_sizer/widgets/navigationdrawer.dart';
import 'package:sizer/sizer.dart';

import '../widgets/builderitems.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text("GridView.builder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text("Villains"),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            // Höhe der Box, in welcher die GridView dargestellt wird.
            height: 40.h,
            child: GridView.builder(
                // gridDelegate zum Bestimmen der Anzahl an Reihen,
                // sowie Abstand zwischen den Items und dem Größenverhältnis (Breite:Höhe)
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 2 -> Zwei Reihen
                  crossAxisCount: 2,
                  // crossAxisSpacing: 3.h -> Abstand auf der Querachse
                  crossAxisSpacing: 3.h,
                  // mainAxisSpacing: 3.h -> Abstand auf der Hauptachse
                  mainAxisSpacing: 3.h,
                ),
                // scrollDirection: Axis.horizontal -> Ausrichtung der GridView
                scrollDirection: Axis.horizontal,
                // itemCount: villains.length -> Anzahl der GridItems,
                // basierend auf Listen-Länge(siehe variables/listen.dart)
                itemCount: villains.length,
                itemBuilder: (BuildContext context, int index) {
                  // benutzerdefiniertes Widget (siehe widgets/builderitems.dart)
                  return GridViewContainer(
                    // pfad zum bild jeden items aus der villains-List (siehe variables/listen.dart)
                    itemImage: villains[index].image,
                    // der name jeden items aus der villains-List (siehe variables/listen.dart)
                    itemText: villains[index].name,
                    // Parameter für die Column, damit der Name am unteren Rand angezeigt wird (siehe widgets/builderitems.dart)
                    alignmentOfMain: MainAxisAlignment.end,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
