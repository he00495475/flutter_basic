import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<String> dataList = ['aaa', 'bbb', 'ccc'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('aaa'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Column(
                children: List.generate(dataList.length, (index) {
                  return Text(dataList[index]);
                }),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                  child: const Center(child: Text('data1')),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                  child: const Center(child: Text('data2')),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 50,
                            color: Colors.red,
                            child: const Image(
                              image: AssetImage(
                                  "assets/images/638560415351500000.jpeg"),
                            )),
                        Container(
                          width: 50,
                          color: Colors.purple,
                          child: const Center(child: Text('22')),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(flex: 1, child: Text('center')),
                  const Expanded(flex: 1, child: Text('bottom'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
