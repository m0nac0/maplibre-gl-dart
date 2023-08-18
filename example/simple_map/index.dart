import 'dart:html';

import 'package:maplibre_gl_dart/mapbox_gl_dart.dart';

void main() {
  final map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'https://demotiles.maplibre.org/style.json',
      center: LngLat(7.68227, 45.06755),
      zoom: 6,
    ),
  );
  Future<void>.delayed(const Duration(seconds: 2), () {
    final style = map.getStyle();
    window.console.info(style);
    window.console.info(style.layers);

    //TODO remove style.layers or remove getStyle().layers and have
    // one consistent interface.
    window.console.info('------------');
    final style2 = map.style;
    window.console.info(style2);
    window.console.info(style2.layers);
  });
}
