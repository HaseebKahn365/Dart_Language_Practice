import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Weather.dart'; //http is a common identifier to be used when calling fucntions inside the package

class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com';
  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.parse('$baseUrl/api/location/search/?query=$city');
    final locationResponse = await http.get(locationUrl);
    if (locationResponse.statusCode != 200) {
      throw Exception('error getting locationId for city : $city');
    }
    final locationJson = jsonDecode(locationResponse.body) as List; //casting to a list object.
    return locationJson.first['woeid'] as int; //return the first item and it is a map so we can use the key ['woeid']
  }

  Future<Weather> fetchWeather(int locationId) async {
    final weatherUrl = Uri.parse('$baseUrl/location/$locationId');
    final weatherResponse = await http.get(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw Exception('Error getting weather ');
    }
    print(weatherResponse.body);
    final weatherJson = jsonDecode(weatherResponse.body);
    return Weather.fromJson(weatherJson);
  }
}
