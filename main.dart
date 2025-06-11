void main() {

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];
  
  print('Average temperature: ${getAVG(weatherData[0]['temp'], weatherData[1]['temp'], weatherData[2]['temp'])}');
  print('Average rain: ${getAVG(weatherData[0]['rain'], weatherData[1]['rain'], weatherData[2]['rain'])}');
  print('Average wind: ${getAVG(weatherData[0]['wind'], weatherData[1]['wind'], weatherData[2]['wind'])}');
}

double getAVG(double? var1, double? var2, double? var3) {
  double sum = 0.0;
  int counter = 0;

  sum += (var1 ?? 0);
  var1 != null ? counter++ : '';
  sum += (var2 ?? 0);
  var2 != null ? counter++ : '';
  sum += (var3 ?? 0);
  var3 != null ? counter++ : '';
  
  return  sum / counter;
}