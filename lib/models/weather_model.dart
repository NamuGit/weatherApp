import 'package:weatherdetector/models/main_api.dart';
import 'package:weatherdetector/models/sys.dart';
import 'package:weatherdetector/models/weather.dart';
import 'package:weatherdetector/models/wind.dart';

class WeatherData {
  // Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  // Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherData({
    // required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    // required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory WeatherData.weatherDataFromJson(Map<String, dynamic> json) {
    return WeatherData(
      // coord: Coord.fromJson(json['coord']),
      weather: (json['weather'] as List).map((e) => Weather.fromJson(e)).toList(),
      base: json['base'],
      main: Main.fromJson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      // clouds: Clouds.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
}

// class Coord {
//   double lon;
//   double lat;
//
//   Coord({
//     required this.lon,
//     required this.lat,
//   });
//
//   factory Coord.fromJson(Map<String, dynamic> json) {
//     return Coord(
//       lon: json['lon'].toDouble(),
//       lat: json['lat'].toDouble(),
//     );
//   }
// }







// class Clouds {
//   int all;
//
//   Clouds({
//     required this.all,
//   });
//
//   factory Clouds.fromJson(Map<String, dynamic> json) {
//     return Clouds(
//       all: json['all'],
//     );
//   }
// }


