import 'package:flutter/material.dart';
import 'package:grid_table/components/row_of_cards.dart';
import 'package:grid_table/components/row_of_categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight / 5;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RowOfCategories(halfScreenHeight: halfScreenHeight ,
              flex: 20,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              text1: "الاخبار",
              color2: const Color.fromRGBO(82, 14, 99, 0.8),
              text2: "المجلات"),
            RowOfCards(
              halfScreenHeight: halfScreenHeight,
              image1: "assets/images/policy.jpg",
              image2: "assets/images/technology.jpg",
              text1: "مجلة السياسة",
              text2: "مجلة التكنولوجيا",
              flex: 20,
              bottom: 8.0,
              top: 8.0,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              color2: const Color.fromRGBO(82, 14, 99, 0.6),
            ),
            RowOfCards(
              halfScreenHeight: halfScreenHeight,
              image1: "assets/images/sports.jpg",
              image2: "assets/images/tourism.jpg",
              text1: "مجلة الرياضة",
              text2: "مجلة السياحة",
              flex: 20,
              bottom: 8.0,
              top: 0.0,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              color2: const Color.fromRGBO(82, 14, 99, 0.6),
            ),
            RowOfCards(
              halfScreenHeight: halfScreenHeight,
              image1: "assets/images/health.png",
              image2: "assets/images/hawaa.jpg",
              text1: "مجلة الصحة",
              text2: "مجلة المرأة",
              flex: 20,
              bottom: 8.0,
              top: 0.0,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              color2: const Color.fromRGBO(82, 14, 99, 0.6),
            ),
            RowOfCards(
              halfScreenHeight: halfScreenHeight,
              image1: "assets/images/economy.jpg",
              image2: "assets/images/knowledege.jpg",
              text1: "مجلة الاقتصاد",
              text2: "مجلة المعرفة",
              flex: 20,
              bottom: 8.0,
              top: 0.0,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              color2: const Color.fromRGBO(82, 14, 99, 0.6),
            ),
            RowOfCards(
              halfScreenHeight: halfScreenHeight,
              image1: "assets/images/cooking.jpg",
              image2: "assets/images/cars.jpg",
              text1: "مجلة المطبخ",
              text2: "مجلة السيارات",
              flex: 20,
              bottom: 8.0,
              top: 0.0,
              left: 8.0,
              right: 0.0,
              color1: const Color.fromRGBO(82, 14, 99, 0.8),
              color2: const Color.fromRGBO(82, 14, 99, 0.6),
            ),
          ],
        ),
      ),
    );
  }
}
