import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_card.dart';
import 'package:intranet_links/models/model_section.dart';
import 'package:intranet_links/types/type_card.dart';
import 'package:intranet_links/types/type_section.dart';

class Children extends StatelessWidget {
  const Children({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>>? data;

  @override
  Widget build(BuildContext context) {
    if (data == null || data!.isEmpty) {
      return Container();
    }

    List<Widget> widgets = [];

    for (var item in data!) {
      switch (item['type']) {
        case "card":
          ModelCard object = ModelCard(
            type: item['type'],
            link: item['link'],
            name: item['name'],
            description: item['description'],
            icon: item['icon'],
          );

          widgets.add(TypeCard(data: object));
          break;

        case "section":
          ModelSection object = ModelSection(
            type: item['type'],
            columns: item['columns'],
            name: item['name'],
            children: item['children'].isEmpty
                ? <Map<String, dynamic>>[]
                : item['children'],
          );

          widgets.add(TypeSection(data: object));
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
