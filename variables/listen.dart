import '../datamodels/characters.dart';

// hier eine Liste mit unseren Charakteren
//  nutzen wir später nicht mehr
List<String> avengersList = [
  "images/groot.jpeg",
  "images/ironman.jpeg",
  "images/wong.jpeg",
  "images/thor.jpeg",
  "images/wanda.jpg",
  "images/widow.jpg",
  "images/rescue.jpg"
];

// Liste mit Characters, damit wir neben dem Pfad
// auch einen Namen angeben und abrufen können
List<Character> heroes = [
  Character("Groot", "images/groot.jpeg"),
  Character("Iron Man", "images/ironman.jpeg"),
  Character("Wong", "images/wong.jpeg"),
  Character("Thor", "images/thor.jpeg"),
  Character("Wanda", "images/wanda.jpg"),
  Character("Black Widow", "images/widow.jpg"),
  Character("Rescue", "images/rescue.jpg")
];
