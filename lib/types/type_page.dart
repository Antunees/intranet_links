import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_page.dart';
import 'package:intranet_links/pages/new_page.dart';

class TypePage extends StatelessWidget {
  const TypePage({
    super.key,
    required this.data,
  });

  final ModelPage data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewPage(
                  data: data,
                ),
              ),
            );
          },
          child: Row(
            children: [
              Text(data.name),
              const SizedBox(
                width: 8.0,
              ),
              const Icon(Icons.arrow_forward),
            ],
          )),
    );
  }
}
