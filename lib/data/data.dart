import 'package:flutter/material.dart';
import 'package:netflix/models/content.dart';

import '../utilities.dart';

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Utilities.sintel,
  titleImageUrl: Utilities.sintelTitle,
  videoUrl: Utilities.sintelVideoUrl,
  description:
  'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews = const [
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Utilities.atla,
    color: Colors.orange,
    titleImageUrl: Utilities.atlaTitle,
  ),
  Content(
    name: 'The Crown',
    imageUrl: Utilities.crown,
    color: Colors.red,
    titleImageUrl: Utilities.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Utilities.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Utilities.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Utilities.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Utilities.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Utilities.blackMirror,
    color: Colors.green,
    titleImageUrl: Utilities.blackMirrorTitle,
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Utilities.atla,
    color: Colors.orange,
    titleImageUrl: Utilities.atlaTitle,
  ),
  Content(
    name: 'The Crown',
    imageUrl: Utilities.crown,
    color: Colors.red,
    titleImageUrl: Utilities.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Utilities.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Utilities.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Utilities.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Utilities.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Utilities.blackMirror,
    color: Colors.green,
    titleImageUrl: Utilities.blackMirrorTitle,
  ),
];

final List<Content> myList = const [
  Content(name: 'Violet Evergarden', imageUrl: Utilities.violetEvergarden),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Utilities.htsdof),
  Content(name: 'Kakegurui', imageUrl: Utilities.kakegurui),
  Content(name: 'Carole and Tuesday', imageUrl: Utilities.caroleAndTuesday),
  Content(name: 'Black Mirror', imageUrl: Utilities.blackMirror),
  Content(name: 'Violet Evergarden', imageUrl: Utilities.violetEvergarden),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Utilities.htsdof),
  Content(name: 'Kakegurui', imageUrl: Utilities.kakegurui),
  Content(name: 'Carole and Tuesday', imageUrl: Utilities.caroleAndTuesday),
  Content(name: 'Black Mirror', imageUrl: Utilities.blackMirror),
];

final List<Content> originals = const [
  Content(name: 'Stranger Things', imageUrl: Utilities.strangerThings),
  Content(name: 'The Witcher', imageUrl: Utilities.witcher),
  Content(name: 'The Umbrella Academy', imageUrl: Utilities.umbrellaAcademy),
  Content(name: '13 Reasons Why', imageUrl: Utilities.thirteenReasonsWhy),
  Content(name: 'The End of the F***ing World', imageUrl: Utilities.teotfw),
  Content(name: 'Stranger Things', imageUrl: Utilities.strangerThings),
  Content(name: 'The Witcher', imageUrl: Utilities.witcher),
  Content(name: 'The Umbrella Academy', imageUrl: Utilities.umbrellaAcademy),
  Content(name: '13 Reasons Why', imageUrl: Utilities.thirteenReasonsWhy),
  Content(name: 'The End of the F***ing World', imageUrl: Utilities.teotfw),
];

final List<Content> trending = const [
  Content(name: 'Explained', imageUrl: Utilities.explained),
  Content(name: 'Avatar The Last Airbender', imageUrl: Utilities.atla),
  Content(name: 'Tiger King', imageUrl: Utilities.tigerKing),
  Content(name: 'The Crown', imageUrl: Utilities.crown),
  Content(name: 'Dogs', imageUrl: Utilities.dogs),
  Content(name: 'Explained', imageUrl: Utilities.explained),
  Content(name: 'Avatar The Last Airbender', imageUrl: Utilities.atla),
  Content(name: 'Tiger King', imageUrl: Utilities.tigerKing),
  Content(name: 'The Crown', imageUrl: Utilities.crown),
  Content(name: 'Dogs', imageUrl: Utilities.dogs),
];