import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_card.dart';
import 'package:intranet_links/types/type_card.dart';

class Children extends StatelessWidget {
  const Children({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (var item in data) {
      switch (item['type']) {
        case "card":
          ModelCard object = ModelCard(
            type: item['type'],
            link: item['link'],
            name: item['name'],
            description: item['description'],
          );

          widgets.add(TypeCard(data: object));
          break;

        default:
          print("Não entrou em nenhum");
          print(item);
      }
    }

    return Column(
      children: widgets,
    );
  }
}
