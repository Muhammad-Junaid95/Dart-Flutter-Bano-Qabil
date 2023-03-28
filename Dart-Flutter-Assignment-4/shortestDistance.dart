//Create a map that associates the names of cities with their latitude and longitude coordinates. Given a starting and ending city, find the shortest distance between them (you can assume a spherical Earth).
import 'dart:math';

void main(List<String> args) {
  Map<String, List<double>> cities = {
    'Karachi': [24.8607, 67.0011],
    'Lahore': [31.5820, 74.3294],
    'Peshawar': [34.0150, 71.5250],
    'Quetta': [30.1798, 66.9750],
    'Islamabad': [33.6844, 73.0479]
  };

  String startCity = 'Karachi';
  String viaCity = 'Peshawar';
  String endCity = 'Islamabad';

  double startLat = cities[startCity]![0];
  double startLon = cities[startCity]![1];
  double viaLat = cities[viaCity]![0];
  double viaLon = cities[viaCity]![1];
  double endLat = cities[endCity]![0];
  double endLon = cities[endCity]![1];

  const double radius = 6371;

  double latstart = _degreesToRadians(startLat);
  double lonstart = _degreesToRadians(startLon);
  double latvia = _degreesToRadians(viaLat);
  double lonvia = _degreesToRadians(viaLon);
  double latend = _degreesToRadians(endLat);
  double lonend = _degreesToRadians(endLon);

  double viaCityLat = latvia - latstart;
  double viaCityLon = lonvia - lonstart;
  double endCityLat = latend - latstart;
  double endCityLon = lonend - lonstart;
  double a = pow(sin(viaCityLat / 2), 2) +
      cos(latstart) * cos(latvia) * pow(sin(viaCityLon / 2), 2) +
      pow(sin(endCityLat / 2), 2) +
      cos(latvia) * cos(latend) * pow(sin(endCityLon / 2), 2);
  double c = 2 * asin(sqrt(a));
  double distance = radius * c;

  print(
      "The distance between $startCity and $endCity via $viaCity = $distance km.");
}

double _degreesToRadians(double degrees) {
  return degrees * (pi / 180);
}
