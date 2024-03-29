import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_card.dart';
import 'package:intranet_links/models/model_column.dart';
import 'package:intranet_links/models/model_page.dart';
import 'package:intranet_links/models/model_profile.dart';
import 'package:intranet_links/models/model_section.dart';
import 'package:intranet_links/types/type_card.dart';
import 'package:intranet_links/types/type_column.dart';
import 'package:intranet_links/types/type_page.dart';
import 'package:intranet_links/types/type_profile.dart';
import 'package:intranet_links/types/type_section.dart';

class Children {
  final List<Map<String, dynamic>>? data;

  Children({
    required this.data,
  });

  List<Widget> getWidgets() {
    if (data == null || data!.isEmpty) {
      return [Container()];
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

        case "column":
          ModelColumn object = ModelColumn(
            columns: item['columns'],
            children: item['children'].isEmpty
                ? <Map<String, dynamic>>[]
                : item['children'],
          );

          widgets.add(TypeColumn(data: object));
          break;

        case "page":
          ModelPage object = ModelPage(
            type: item['type'],
            name: item['name'],
            children: item['children'].isEmpty
                ? <Map<String, dynamic>>[]
                : item['children'],
          );

          widgets.add(TypePage(data: object));
          break;

        case "profile":
          List<LinkAsIcon> linkAsIcon = item['links_as_icon']
              .map<LinkAsIcon>((item) => LinkAsIcon(
                    icon: item['icon'],
                    link: item['link'],
                  ))
              .toList();
          ModelProfile object = ModelProfile(
            type: item['type'],
            name: item['name'],
            image: item['image'],
            description: item['description'],
            linksAsIcons: linkAsIcon,
          );

          widgets.add(TypeProfile(data: object));
          break;

        default:
          print("Não entrou em nenhum");
          print(item);
      }
    }

    return widgets;
  }
}
