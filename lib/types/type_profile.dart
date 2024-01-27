import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intranet_links/models/model_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class TypeProfile extends StatelessWidget {
  const TypeProfile({
    super.key,
    required this.data,
  });

  final ModelProfile data;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: 250,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  profileImage(),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Center(
                    child: Text(
                      data.name,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Text(
                    data.description,
                    style: TextStyle(color: Colors.grey.shade600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _linksAsIcon(),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  CachedNetworkImage profileImage() {
    return CachedNetworkImage(
      imageUrl: data.image,
      height: 150.0,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      placeholder: (context, url) =>
          const SizedBox(width: 150.0, child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Container(),
    );
  }

  List<Widget> _linksAsIcon() {
    List<Widget> icons = [];

    if (data.linksAsIcons == null) {
      return icons;
    }

    for (var element in data.linksAsIcons!) {
      icons.add(Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
            onTap: () => launchUrl(Uri.parse(element.link)),
            child: CachedNetworkImage(
              imageUrl: element.icon,
              height: 25.0,
              placeholder: (context, url) => const SizedBox(
                  width: 25.0, child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Container(),
            ),
          )));
    }

    return icons;
  }
}
