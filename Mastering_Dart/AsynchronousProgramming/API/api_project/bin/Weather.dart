class Weather {
  final String cityName;
  final double temperature;
  Weather({required this.cityName, required this.temperature});

  factory Weather.fromJson(dynamic json) {
    final cityName = json['title'] as String;
    final temperature = json['consolidated_weather'][0]['the_temp'] as double;
    return Weather(cityName: cityName, temperature: temperature);
  }
}
