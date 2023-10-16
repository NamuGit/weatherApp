import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    final f =  DateFormat.yMMMMd('en_US').add_jm();
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.only(left: 20, right: 20, top:55),
            child: Column(
              children: [
                Text("London",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 25),),
                Image.asset("assets/images/clearsky.png", width: 80, height: 100,),
                Text("${f.format(DateTime.now())}",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20),),
                Text("Cloudy",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 20),),
            SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width*0.93,
                  height: MediaQuery.of(context).size.height*0.5,
                  color: Colors.white12,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Wind Details:",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 18),),
                      commanWidget(Icons.water_drop_outlined, "Humidity", "70%"),
                      commanWidget(Icons.ads_click_outlined, "Pressure", "1000"),
                      commanWidget(Icons.wind_power, "Wind Speed", "1000"),
                      commanWidget(Icons.remove_red_eye_sharp, "Visibility", "1000"),
                      commanWidget(Icons.sunny, "Sunrise", "1000"),
                      commanWidget(Icons.sunny_snowing, "Sunset", "1000"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget commanWidget(icon, name , value) {
    return Padding(
      padding: const EdgeInsets.only(top:8,bottom: 8,left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 20,color: Colors.white,),
              SizedBox(width: 10,),
              Text(name,
                  style: TextStyle(fontSize: 16,
                      color: Colors.white, fontWeight: FontWeight.normal),textAlign: TextAlign.end),
            ],
          ),
          Text(value,
            style: TextStyle(fontSize: 16,
                color: Colors.white, fontWeight: FontWeight.normal),
            textAlign: TextAlign.end,)
        ],
      ),
    );
  }
}
