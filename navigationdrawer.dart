import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../screens/screen1.dart';
import '../screens/screen2.dart';
import '../screens/screen3.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/image1.jpeg",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(children: [
          SizedBox(
            height: 10.h,
          ),
          // NavTile -> benutzerdefiniertes Widget (siehe unten)
          const NavTile(
            navName: "Heroes",
            navTarget: Screen1(),
            navIcon: Icons.shield_outlined,
          ),
          const Divider(),
          const NavTile(
            navName: "Villains",
            navTarget: Screen2(),
            navIcon: Icons.badge_outlined,
          ),
          const Divider(),
          const NavTile(
            navName: "Movies",
            navTarget: Screen3(),
            navIcon: Icons.movie_outlined,
          ),
        ]),
      ),
    );
  }
}

// extrahiertes Widget für die ListTiles im Menu
// da wir diese ausschließlich im Drawer benutzen,
// ist es ausreichend, das Widget in der selben,
// dart-Datei zu belassen

class NavTile extends StatelessWidget {
  // variables
  final String navName; // Angezeigter Text für den Screen im Drawer
  final Widget navTarget; // Widget(Screen), zu welchem navigiert werden soll
  final IconData navIcon; // Icon, welches bei leading, dargestellt werden soll

  // constructor
  const NavTile(
      // constructor erweitert: required this.name, required this.target, required this.icon
      {super.key,
      required this.navName,
      required this.navTarget,
      required this.navIcon});

  // methods
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        // navIcon -> wird bei der Instanzierung/Erstellung im Drawer initialisiert
        navIcon,
        size: 18.sp,
        color: Colors.white,
      ),
      title: Text(
        // navName -> wird bei der Instanzierung/Erstellung im Drawer initialisiert
        navName,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // navTarget -> wird bei der Instanzierung/Erstellung im Drawer initialisiert
          return navTarget;
        }));
      },
    );
  }
}
