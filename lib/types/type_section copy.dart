import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_section.dart';
import 'package:intranet_links/pages/children.dart';

class TypeSection extends StatelessWidget {
  const TypeSection({
    super.key,
    required this.data,
  });

  final ModelSection data;

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
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            Text(
              data.name,
              style: TextStyle(fontSize: 25.0),
            ),
            Container(
              // height: 50.0,
              height: 500.0,
              // height: 1000.0,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: columns,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
