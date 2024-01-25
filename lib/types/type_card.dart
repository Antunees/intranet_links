import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_card.dart';
import 'package:url_launcher/url_launcher.dart';

class TypeCard extends StatelessWidget {
  const TypeCard({
    super.key,
    required this.data,
  });

  final ModelCard data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500.0,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(10.0))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(data.name,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text(data.description, style: TextStyle(fontSize: 12.0)),
                ),
                InkWell(
                    child: new Text(data.link),
                    onTap: () => launchUrl(Uri.parse(data.link)))
              ],
            ),
          )),
    );
  }
}
