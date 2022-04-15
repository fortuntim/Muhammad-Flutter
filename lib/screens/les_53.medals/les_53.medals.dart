import 'package:flutter/material.dart';

  class Country {
  String country;
  String gold;
  String silver;
  String bronze;
  String total;

  Country(
  {required this.country,
  required this.gold,
  required this.silver,
  required this.bronze,
  required this.total});
  }

  class MedalStandingsIcons extends StatelessWidget {
  const MedalStandingsIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  List<String> olympics22 = [
  'Страна', 'Золото', 'Серебро', 'Бронза', 'Итого',
  'Норвегия', '16', '8', '13', '37',
  'Германия', '12', '10', '5', '27',
  'Китай', '9', '4', '2', '15',
  'США', '8', '10', '7', '25',
  'Швеция', '8', '5', '5', '18',
  'Нидерланды', '8', '5', '4', '17',
  'Австрия', '7', '7', '4', '18',
  'Швейцария', '7', '2', '5', '14',
  'OKP', '6', '12', '14', '32',
  ];

  List<Country> countryList = [];

  for (int i = 0; i < olympics22.length; i += 5) {
  Country countryObj = Country(
  country: olympics22[i],
  gold: olympics22[i + 1],
  silver: olympics22[i + 2],
  bronze: olympics22[i + 3],
  total: olympics22[i + 4]);
  countryList.add(countryObj);
  }

  List<Widget> widgetList = [];


  for (var country in countryList) {
  Widget design = Row(
  children: [
  SizedBox()Text(country.country),
  Text(country.gold),
  Text(country.silver),
  Text(country.bronze),
  Text(country.total),
  ],
  );

  widgetList.add(design);
  }

  return Scaffold(
  appBar: AppBar(title: const Text('Медальный зачёт')),
  body: Column(children: widgetList),
  );
  }
  }