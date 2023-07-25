import 'package:images_listview_gridview_sizer/datamodels/movies.dart';

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

// Liste mit Characters, damit wir neben dem Pfad
// auch einen Namen angeben und abrufen können
List<Character> villains = [
  Character("Doc Oc", "images/villains/doctoroctopus.jpg"),
  Character("Galactus", "images/villains/galactus.jpg"),
  Character("Hela", "images/villains/hela.webp"),
  Character("Loki", "images/villains/loki.jpeg"),
  Character("Red Skull", "images/villains/redskull.png"),
  Character("Sabretooth", "images/villains/sabretooth.jpg"),
  Character("Thanos", "images/villains/thanos.jpg"),
  Character("Ultron", "images/villains/ultron.jpeg")
];

// Liste mit Movies, damit wir neben dem Pfad
// auch das Jahr angeben und abrufen können
List<Movie> movies = [
  Movie("images/movies/a_aou.jpg", "2015"),
  Movie("images/movies/antman.jpg", "2015"),
  Movie("images/movies/capt_marvel.jpg", "2019"),
  Movie("images/movies/blackwidow.jpg", "2021"),
  Movie("images/movies/shang_chi.webp", "2021"),
  Movie("images/movies/sm_ffh.png", "2021"),
  Movie("images/movies/thor_lat.jpeg", "2022"),
  Movie("images/movies/gotg3.webp", "2023"),
];
