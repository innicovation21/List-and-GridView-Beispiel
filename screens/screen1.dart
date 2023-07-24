import 'package:flutter/material.dart';
import 'package:images_listview_gridview_sizer/variables/listen.dart';
import 'package:sizer/sizer.dart';

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
                    itemCount: avengersList.length,
                    // itemBuilder: Vorlage für jedes einzelne Listenitem
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 30.h, // 30% der Screenhöhe
                        width: 30.h, // 30% der Screenhöhe
                        // FittedBox -> passt sich an die Größe des umgebenden Elements
                        child: FittedBox(
                          child: Container(
                            height: 30.h, // 30% der Screenhöhe
                            width: 30.h, // 30% der Screenhöhe
                            margin: EdgeInsets.only(
                                bottom: 5.h), // 5% der Screenhöhe
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(avengersList[index]),
                                  fit: BoxFit.cover),
                            ),
                            // Column kann auch genutzt werden zur verticalen,
                            // Positionierung eines einzelnen Elementes...
                            child: Column(
                              // ... mit Hilfe von mainAxisAlignment
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 30.h, // 30% der Screenhöhe
                                  color: Colors.black,
                                  child: Text(
                                    "name",
                                    // style -> Formatierung des Textes via TextStyle-Widget
                                    style: TextStyle(
                                        color: Colors.white,
                                        // sp -> scalable pixels - Textgröße abhängig von Screengröße
                                        fontSize: 20.sp),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
