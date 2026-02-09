import "package:flutter/material.dart";
import "package:weather__app/additional_info_item.dart";
import "package:weather__app/secrets.dart";
import "package:weather__app/weather_forecast.dart";
import 'package:http/http.dart' as http;



class MyWeatherScreenApp extends StatefulWidget {
  const MyWeatherScreenApp({super.key});

  @override
  State<MyWeatherScreenApp> createState() => _MyWeatherScreenAppState();
}

class _MyWeatherScreenAppState extends State<MyWeatherScreenApp> {
  @override
  Widget build(BuildContext context) {
    String cityName = "London";

    Future getCurrentWeather()async{
      final result = await http.get(
        Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=$openWeatherKey")
      );
      print(result.body);
      
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
          icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //MAIN CARD
            SizedBox(
              width: double.infinity,
              child: Card(
                // elevation: 5,
                shadowColor: const Color.fromARGB(31, 126, 83, 83),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text("300 °F",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        const SizedBox(height: 10),
                        Icon(
                          Icons.cloud,
                          size: 50,
                        ),
                        const SizedBox(height: 10),
                        Text("Rain",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            //some height box
            const SizedBox(height: 20),
            Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text("Weather forecasting", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            const SizedBox(height: 20),
            //forecast cards

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  EarlyForecastItem(weatherValue: "300.1", conditionValue: "320", icon: Icons.cloud),
                  EarlyForecastItem(weatherValue: "300.5", conditionValue: "220",icon: Icons.sunny),
                  EarlyForecastItem(weatherValue: "300.8", conditionValue: "326", icon: Icons.cloud),
                  EarlyForecastItem(weatherValue: "328.2", conditionValue: "329", icon: Icons.sunny),
                  EarlyForecastItem(weatherValue: "300.9", conditionValue: "321", icon: Icons.cloud),
                ]
              )
            ),
            SizedBox(height: 16),
            Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text("Additional Information", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInformation(icon: Icons.water_drop, label: "Humidty", value: "94"),
                  AdditionalInformation(icon: Icons.air, label: "Wind Speed", value: "7.67"),
                  AdditionalInformation(icon: Icons.beach_access, label: "Pressure", value: "1006")
                ],
              ),
            
          ],
          
        ),
      ),
    );

  }
}

