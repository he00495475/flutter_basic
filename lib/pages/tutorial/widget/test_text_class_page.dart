// 假設我們的畫面類別名稱為 TestTextClassPage
import 'package:flutter/material.dart';

class TestTextClassPage extends StatelessWidget {
  // 建構子接收假資料作為參數
  const TestTextClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Page'),
      ),
      body: Container(
        width: 100,
        decoration: BoxDecoration(border: Border.all()),
        child: const Column(
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              'Hello gacim, how are you?',
            ),
            Text(
                overflow: TextOverflow.fade,
                maxLines: 1,
                'Hello gacim, how are you?'),
            Text(
                overflow: TextOverflow.fade,
                softWrap: false,
                'Hello gacim, how are you?')
          ],
        ),
      ),
    );
  }
}
