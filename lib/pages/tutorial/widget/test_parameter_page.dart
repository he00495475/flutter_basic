// 假設我們的畫面類別名稱為 TestParameterPage
import 'package:flutter/material.dart';
import 'dart:convert'; // 用於 JSON 資料解析

class TestParameterPage extends StatelessWidget {
  final List<Map<String, dynamic>> dataList;

  // 建構子接收假資料作為參數
  const TestParameterPage({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Page'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final item = dataList[index];
          return ListTile(
            title: Text(item['title']),
            subtitle: Text(item['subtitle']),
          );
        },
      ),
    );
  }
}
