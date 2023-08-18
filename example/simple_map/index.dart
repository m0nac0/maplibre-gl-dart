import 'dart:html';

import 'package:maplibre_gl_dart/mapbox_gl_dart.dart';

void main() {
  final map = MapboxMap(
    MapOptions(
      container: 'map',
      style:
          'https://api.maptiler.com/maps/3dd4d51b-ae78-4074-8b31-b47a49f1b5ce/style.json?key=kZ5xAKKbPzxo3GeJ2odT',
      center: LngLat(7.68227, 45.06755),
      zoom: 12,
    ),
  );
  Future<void>.delayed(const Duration(seconds: 2), () {
    final style = map.getStyle();
    window.console.info(style);
    window.console.info(style.layers);

    window.console.info('------------');
    final style2 = map.style;
    window.console.info(style2);
    window.console.info(style2.layers);
  });
}
