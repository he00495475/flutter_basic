import 'package:flutter/material.dart';
import 'package:flutter_basic_product/pages/tutorial/widget/test_page.dart';
import 'package:flutter_basic_product/pages/tutorial/widget/test_parameter_page.dart';
import 'package:flutter_basic_product/pages/tutorial/widget/test_text_class_page.dart';
import 'package:flutter_basic_product/widget/appBar/custom_app_bar.dart';
import 'package:flutter_basic_product/widget/tabBar/custom_tab_bar.dart';

class BaseElementPage extends StatefulWidget {
  const BaseElementPage({super.key});

  @override
  BaseElementState createState() => BaseElementState();
}

class BaseElementState extends State<BaseElementPage>
    with SingleTickerProviderStateMixin {
  // 假 JSON 資料
  List<Map<String, dynamic>> dataList = [
    {"title": "Item 1", "subtitle": "Description 1"},
    {"title": "Item 2", "subtitle": "Description 2"},
    {"title": "Item 3", "subtitle": "Description 3"},
    {"title": "Item 3", "subtitle": "Description 3"},
    {"title": "Item 3", "subtitle": "Description 3"},
  ];
  late TabController _tabController;
  late List<Map<String, dynamic>> tabBarJsonData;

  @override
  void initState() {
    super.initState();
    // 在此處初始化 tabBarJsonData
    tabBarJsonData = [
      {
        'title': '基礎部件',
        'content': [
          {
            'title': '建構 Flutter 佈局',
            'page': const TestPage(),
            'image': 'https://via.placeholder.com/150',
          },
          {
            'title': '清單',
            'page': TestParameterPage(
              dataList: dataList,
            ),
            'image': 'https://via.placeholder.com/150',
          },
          {
            'title': '文字樣式 超出範圍',
            'page': const TestTextClassPage(),
            'image': 'https://via.placeholder.com/150',
          }
        ]
      },
      {'title': '應用', 'content': []}
    ];
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

Map<String, dynamic> getPageData(String type) {
  if (type == 'travel') {
    return {
      'image': 'https://via.placeholder.com/300x200',
      'name': 'Eiffel Tower',
      'location': 'Paris, France',
      'description':
          'The Eiffel Tower is one of the most iconic landmarks in the world, '
              'located in Paris, France. Visitors can enjoy panoramic views of the city '
              'from its observation decks.',
    };
  } else if (type == 'product') {
    return {
      'image': 'https://via.placeholder.com/300x200',
      'name': 'Smartphone X',
      'location': 'Electronics Store',
      'description':
          'Smartphone X is the latest in mobile technology, featuring a stunning display, '
              'high-performance processor, and an incredible camera system.',
    };
  } else {
    return {
      'image': 'https://via.placeholder.com/300x200',
      'name': 'Unknown Item',
      'location': 'Unknown Location',
      'description': 'No details available for this item.',
    };
  }
}
