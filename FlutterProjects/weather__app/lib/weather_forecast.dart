import 'package:flutter/material.dart';



class EarlyForecastItem extends StatelessWidget {

  final String weatherValue;
  final String conditionValue;
  final IconData icon;
  const EarlyForecastItem({
    super.key,
    required this.weatherValue,
    required this.conditionValue,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text( weatherValue,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              )
              ),
              SizedBox(height: 8),
              Icon(icon, size: 32),
              SizedBox(height: 16),
              Text(conditionValue,
              style: TextStyle(
                fontSize: 16
              ))
            ],
          ),
        ),
      ),
    );
  }
}