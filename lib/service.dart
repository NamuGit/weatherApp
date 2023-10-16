import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:weatherdetector/models/weather_model.dart';

var apiProvider = ChangeNotifierProvider((ref) => ApiCall());

class ApiCall with ChangeNotifier{
  WeatherData? displayList;

  getApi() async{
    final String url = 'https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=8744473c51e84cd79ac1b6600ced02bd';
    WeatherData? object;
    // try {
      // if(dbData == null ){
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          // Request successful, handle the response data here
          print('Response data: ${response.body}');
          object = WeatherData.weatherDataFromJson(jsonDecode(response.body));
          displayList= object;
         //  notifyListeners();
        } else {
          // Request failed
          print('Request failed with status code: ${response.statusCode}');
          print('Response data: ${response.body}');
        }
      // }else{
      //   displayList.addAll(dbData);
      // }
    // } catch (e) {
    //   // Handle any errors that occurred during the request
    //   print('Error: $e');
    // }

  }


}

