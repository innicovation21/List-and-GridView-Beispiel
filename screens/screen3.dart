import 'package:flutter/material.dart';
import 'package:images_listview_gridview_sizer/variables/listen.dart';
import 'package:images_listview_gridview_sizer/widgets/navigationdrawer.dart';
import 'package:sizer/sizer.dart';

import '../widgets/builderitems.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      endDrawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("GridView.builder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Movies",
            style: TextStyle(fontSize: 20.sp, color: Colors.white),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 80.h,
            child: GridView.builder(
                // gridDelegate zum Bestimmen der Anzahl an Reihen,
                // sowie Abstand zwischen den Items und dem Größenverhältnis (Breite:Höhe)
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 1 -> Eine Reihe
                  crossAxisCount: 1,
                  // crossAxisSpacing: 3.h -> Abstand auf der Querachse
                  crossAxisSpacing: 3.h,
                  // mainAxisSpacing: 3.h -> Abstand auf der Hauptachse
                  mainAxisSpacing: 3.h,
                  // childAspectRatio: 1.6 -> Höhe 1.6 zu Breite 1
                  childAspectRatio: 1.6,
                ),
                // scrollDirection: Axis.horizontal -> Ausrichtung der GridView
                scrollDirection: Axis.horizontal,
                // itemCount: movies.length -> Anzahl der GridItems,
                // basierend auf Listen-Länge(siehe variables/listen.dart)
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  // benutzerdefiniertes Widget (siehe widgets/builderitems.dart)
                  return GridViewContainer(
                    // pfad zum bild jeden items aus der movies-List (siehe variables/listen.dart)
                    itemImage: movies[index].image,
                    // das jahr jeden items aus der movies-List (siehe variables/listen.dart)
                    itemText: movies[index].year,
                    // Parameter für die Column, damit der Name am unteren Rand angezeigt wird (siehe widgets/builderitems.dart)
                    alignmentOfMain: MainAxisAlignment.start,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
