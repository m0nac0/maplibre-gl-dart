@JS('maplibregl')
library mapboxgl.interop.geo.lng_lat;

import 'package:js/js.dart';
import 'package:maplibre_gl_dart/src/interop/interop.dart';

///  A `LngLat` object represents a given longitude and latitude coordinate, measured in degrees.
///
///  Mapbox GL uses longitude, latitude coordinate order (as opposed to latitude, longitude) to match GeoJSON.
///
///  Note that any Mapbox GL method that accepts a `LngLat` object as an argument or option
///  can also accept an `Array` of two numbers and will perform an implicit conversion.
///  This flexible type is documented as {@link LngLatLike}.
///
///  @param {number} lng Longitude, measured in degrees.
///  @param {number} lat Latitude, measured in degrees.
///  @example
///  var ll = new mapboxgl.LngLat(-73.9749, 40.7736);
///  @see [Get coordinates of the mouse pointer](https://www.mapbox.com/mapbox-gl-js/example/mouse-position/)
///  @see [Display a popup](https://www.mapbox.com/mapbox-gl-js/example/popup/)
///  @see [Highlight features within a bounding box](https://www.mapbox.com/mapbox-gl-js/example/using-box-queryrenderedfeatures/)
///  @see [Create a timeline animation](https://www.mapbox.com/mapbox-gl-js/example/timeline-animation/)
@JS('LngLat')
class LngLatJsImpl {
  external num get lng;
  external num get lat;

  external factory LngLatJsImpl(
    num lng,
    num lat,
  );

  /// Returns a new `LngLat` object whose longitude is wrapped to the range (-180, 180).
  ///
  ///  @returns {LngLat} The wrapped `LngLat` object.
  ///  @example
  ///  var ll = new mapboxgl.LngLat(286.0251, 40.7736);
  ///  var wrapped = ll.wrap();
  ///  wrapped.lng; // = -73.9749
  external LngLatJsImpl wrap();

  ///  Returns the coordinates represented as an array of two numbers.
  ///
  ///  @returns {Array<number>} The coordinates represeted as an array of longitude and latitude.
  ///  @example
  ///  var ll = new mapboxgl.LngLat(-73.9749, 40.7736);
  ///  ll.toArray(); // = [-73.9749, 40.7736]
  external List<num> toArray();

  ///  Returns the coordinates represent as a string.
  ///
  ///  @returns {string} The coordinates represented as a string of the format `'LngLat(lng, lat)'`.
  ///  @example
  ///  var ll = new mapboxgl.LngLat(-73.9749, 40.7736);
  ///  ll.toString(); // = "LngLat(-73.9749, 40.7736)"
  external String toString();

  ///  Returns a `LngLatBounds` from the coordinates extended by a given `radius`. The returned `LngLatBounds` completely contains the `radius`.
  ///
  ///  @param {number} [radius]=0 Distance in meters from the coordinates to extend the bounds.
  ///  @returns {LngLatBounds} A new `LngLatBounds` object representing the coordinates extended by the `radius`.
  ///  @example
  ///  var ll = new mapboxgl.LngLat(-73.9749, 40.7736);
  ///  ll.toBounds(100).toArray(); // = [[-73.97501862141328, 40.77351016847229], [-73.97478137858673, 40.77368983152771]]
  external LngLatBoundsJsImpl toBounds(num radius);

  ///  Converts an array of two numbers or an object with `lng` and `lat` or `lon` and `lat` properties
  ///  to a `LngLat` object.
  ///
  ///  If a `LngLat` object is passed in, the function returns it unchanged.
  ///
  ///  @param {LngLatLike} input An array of two numbers or object to convert, or a `LngLat` object to return.
  ///  @returns {LngLat} A new `LngLat` object, if a conversion occurred, or the original `LngLat` object.
  ///  @example
  ///  var arr = [-73.9749, 40.7736];
  ///  var ll = mapboxgl.LngLat.convert(arr);
  ///  ll;   // = LngLat {lng: -73.9749, lat: 40.7736}
  external static LngLatJsImpl convert(dynamic input);
}
