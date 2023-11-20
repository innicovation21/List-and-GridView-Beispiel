import 'package:images_listview_gridview_sizer/datamodels/movies.dart';

import '../datamodels/characters.dart';

// hier eine Liste mit unseren Charakteren
//  nutzen wir später nicht mehr
List<String> avengersList = [
  "images/groot.png",
  "images/ironman.png",
  "images/wong.png",
  "images/thor.png",
  "images/wanda.png",
  "images/widow.png",
  "images/rescue.png"
];

// Liste mit Characters, damit wir neben dem Pfad
// auch einen Namen angeben und abrufen können
List<Character> heroes = [
  Character("Groot", "images/groot.png"),
  Character("Iron Man", "images/ironman.png"),
  Character("Wong", "images/wong.png"),
  Character("Thor", "images/thor.png"),
  Character("Wanda", "images/wanda.png"),
  Character("Black Widow", "images/widow.png"),
  Character("Rescue", "images/rescue.png")
];

// Liste mit Characters, damit wir neben dem Pfad
// auch einen Namen angeben und abrufen können
List<Character> villains = [
  Character("Doc Oc", "images/villains/doctoroctopus.png"),
  Character("Galactus", "images/villains/galactus.png"),
  Character("Hela", "images/villains/hela.png"),
  Character("Loki", "images/villains/loki.png"),
  Character("Red Skull", "images/villains/redskull.png"),
  Character("Sabretooth", "images/villains/sabretooth.png"),
  Character("Thanos", "images/villains/thanos.png"),
  Character("Ultron", "images/villains/ultron.png")
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
