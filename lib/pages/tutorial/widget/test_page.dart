import 'package:flutter/material.dart';
import 'package:flutter_basic_product/widget/appBar/custom_app_bar.dart';
import 'package:flutter_basic_product/widget/section/button_section.dart';
import 'package:flutter_basic_product/widget/section/image_section.dart';
import 'package:flutter_basic_product/widget/section/text_section.dart';
import 'package:flutter_basic_product/widget/section/title_section.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  TestState createState() => TestState();
}

class TestState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "test page"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageSection(image: 'assets/images/638560415351500000.jpeg'),
            TitleSection(name: 'name', location: 'location'),
            ButtonSection(),
            TextSection(
              description:
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                  'Bernese Alps. Situated 1,578 meters above sea level, it '
                  'is one of the larger Alpine Lakes. A gondola ride from '
                  'Kandersteg, followed by a half-hour walk through pastures '
                  'and pine forest, leads you to the lake, which warms to 20 '
                  'degrees Celsius in the summer. Activities enjoyed here '
                  'include rowing, and riding the summer toboggan run.',
            ),
          ],
        ),
      ),
    );
  }
}
