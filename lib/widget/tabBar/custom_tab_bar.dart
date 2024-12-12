import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Map<String, dynamic>> jsonData;

  const CustomTabBar({
    super.key,
    required this.controller,
    required this.jsonData,
  });

  @override
  Widget build(BuildContext context) {
    final titles = jsonData.map((e) => Tab(text: e['title'])).toList();
    final contents = jsonData
        .map(
          (e) => ListView(
            children: (e['content'] as List).map<Widget>((content) {
              final title = content['title'] ?? '無標題';
              final subtitle = content['subtitle'] ?? '無描述';
              final imageUrl = content['image'];

              return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => content['page']));
                    },
                    child: Container(
                      child: ListTile(
                        leading: imageUrl != null
                            ? Image.network(
                                imageUrl,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(
                                  Icons.align_vertical_top,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              )
                            : Icon(
                                Icons.image_not_supported,
                                size: 50,
                                color: Colors.grey[600],
                              ),
                        title: Text(title),
                        subtitle: Text(subtitle),
                      ),
                    ),
                  ));
            }).toList(),
          ),
        )
        .toList();

    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: controller,
            tabs: titles,
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: contents,
            ),
          ),
        ],
      ),
    );
  }
}
