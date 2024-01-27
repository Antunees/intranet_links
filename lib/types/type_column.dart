import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_column.dart';
import 'package:intranet_links/pages/children.dart';

class TypeColumn extends StatelessWidget {
  const TypeColumn({
    super.key,
    required this.data,
  });

  final ModelColumn data;

  @override
  Widget build(BuildContext context) {
    Children childrens = Children(data: data.children);
    List<List<Widget>> list = [];
    int index = 0;
    childrens.getWidgets().forEach((Widget element) {
      if (list.length <= index) {
        list.add([]);
      }
      list[index].add(element);

      index++;
      if (index >= data.columns) {
        index = 0;
      }
    });

    List<Column> columns = [];

    for (var element in list) {
      columns.add(Column(
        children: element,
      ));
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: columns,
            ),
          )
        ],
      ),
    );
  }
}
