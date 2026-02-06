import "package:flutter/material.dart";


class MyWeatherScreenApp extends StatelessWidget {
  const MyWeatherScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
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
                elevation: 10,
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
            //forecast cards
            const Placeholder(
              fallbackHeight: 150,
            ),
            //some height box
            const SizedBox(height: 20),
            //forecast cards
            const Placeholder(
              fallbackHeight: 150,
            )
          ],
        ),
      ),
    );
  }
}