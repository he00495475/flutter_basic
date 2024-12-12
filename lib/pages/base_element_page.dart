import 'package:flutter/material.dart';
import 'package:flutter_basic_product/pages/test_page.dart';
import 'package:flutter_basic_product/widget/appBar/custom_app_bar.dart';
import 'package:flutter_basic_product/widget/tabBar/custom_tab_bar.dart';

class BaseElementPage extends StatefulWidget {
  const BaseElementPage({super.key});

  @override
  BaseElementState createState() => BaseElementState();
}

class BaseElementState extends State<BaseElementPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Map<String, dynamic>> tabBarJsonData = [
    {
      'title': '基礎部件',
      'content': [
        {
          'title': '建構 Flutter 佈局',
          'page': const TestPage(),
          'image': 'https://via.placeholder.com/150',
        },
        {
          'title': '應用程式添加互動性',
          'page': const TestPage(),
          'image': 'https://via.placeholder.com/150',
        }
      ]
    }
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabBarJsonData.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: '基礎教學'),
      body: CustomTabBar(controller: _tabController, jsonData: tabBarJsonData),
    );
  }
}
