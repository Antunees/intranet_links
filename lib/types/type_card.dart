import 'package:cached_network_image/cached_network_image.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => launchUrl(Uri.parse(data.link)),
          child: SizedBox(
            width: 500.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.name,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data.description,
                        style: const TextStyle(fontSize: 12.0)),
                  ),
                  Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: data.icon,
                        height: 20.0,
                        placeholder: (context, url) => const SizedBox(
                            width: 20.0, child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Container(),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Flexible(
                        child: Text(
                          data.link,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
