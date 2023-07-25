import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ListView Screen1
class ListViewContainer extends StatelessWidget {
  // variables
  // image -> für Bildpfad (Character.image)
  final String image;
  // name -> für Character.name
  final String name;

  // constructor
  // erweitert um: "required this.image" und "required this.name"
  const ListViewContainer({super.key, required this.image, required this.name});

  // methods
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h, // 30% der Screenhöhe
      width: 30.h, // 30% der Screenhöhe
      // FittedBox -> passt sich an die Größe des umgebenden Elements
      child: FittedBox(
        child: Container(
          height: 30.h, // 30% der Screenhöhe
          width: 30.h, // 30% der Screenhöhe
          margin: EdgeInsets.only(bottom: 5.h), // 5% der Screenhöhe
          decoration: BoxDecoration(
            image: DecorationImage(
                // ALT: image: AssetImage(avengersList[index]),
                image: AssetImage(image),
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
                  name,
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
  }
}

// + + + + + + + + + + + + GridView Screen2 und 3 + + + + + + + + + + + + +

class GridViewContainer extends StatelessWidget {
  // variables
  final String itemImage;
  final String itemText;
  // für eine individualisierbare Ausrichtung der Column (Text -> oben / unten)
  final MainAxisAlignment alignmentOfMain;

  // constructor
  const GridViewContainer(
      {super.key,
      required this.itemImage,
      required this.itemText,
      required this.alignmentOfMain});

  // methods
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // itemImage -> wird bei der Instanzierung/Erstellung im itemBuilder initialisiert
        image: DecorationImage(image: AssetImage(itemImage), fit: BoxFit.cover),
      ),
      child: Column(
        // alignmentOfMain -> wird bei der Instanzierung/Erstellung im itemBuilder initialisiert
        mainAxisAlignment: alignmentOfMain,
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Text(
              // itemText -> wird bei der Instanzierung/Erstellung im itemBuilder initialisiert
              itemText,
              // textAlign: TextAlign.center -> für horizontale Zentrierung des Textes
              textAlign: TextAlign.center,
              // style: TextStyle() -> style-formatierung des Textes
              style: TextStyle(
                // fontSize: 14.sp -> Schriftgröße
                fontSize: 14.sp,
                // color: Colors.white -> Textfarbe
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
