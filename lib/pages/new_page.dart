import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_page.dart';
import 'package:intranet_links/pages/children.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.data,
  });

  final ModelPage data;

  @override
  Widget build(BuildContext context) {
    Children childrens = Children(data: data.children);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          data.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.shade600,
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Column(
                    children: childrens.getWidgets(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
