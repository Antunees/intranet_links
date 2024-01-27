import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intranet_links/pages/children.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> devPage = [
      {
        'type': 'column',
        'columns': 1,
        'children': [
          {
            'type': 'card',
            'link': 'https://github.com/Antunees',
            'name': 'Github',
            'description': 'Code repository',
            'icon':
                'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTXgU6jbXaasGWWSsHHRxA4u02UKJewdBU61QdWjON3SF36xKJND68gzN_UIT-32BVnULHJAfL-9GxXI2qkz0pZUkHFLQ=s2560',
          },
          {
            'type': 'card',
            'link': 'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
            'name': 'Linkedin',
            'description': 'Professional profile',
            'icon':
                'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
          },
          {
            'type': 'profile',
            'name': 'Heathcliff Andrew Ledger',
            'image':
                'https://lh3.googleusercontent.com/drive-viewer/AEYmBYSR2gN2G5qOrD0swF36Ge_6nwXko2mqQKgQB2a_Y50pFdzNZqML_LtZtEsC2u1koT7PT4zbeTodBWeS2U2UXmXShdJv9A=s2560',
            'description': 'software engineer',
            // 'Hi, I\'m Heath, a software engineer specializing in artificial intelligence. Besides dedicating my time to developing advanced algorithms, I\'m a science fiction enthusiast. Pizza is my go-to comfort food, and I usually code to classical music, finding harmony in the notes conducive to solving complex problems.',
            'links_as_icon': [
              {
                'icon':
                    'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTXgU6jbXaasGWWSsHHRxA4u02UKJewdBU61QdWjON3SF36xKJND68gzN_UIT-32BVnULHJAfL-9GxXI2qkz0pZUkHFLQ=s2560',
                'link': 'https://github.com/Antunees',
              },
              {
                'icon':
                    'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
                'link':
                    'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
              },
            ],
          },
        ],
      },
    ];
    const List<Map<String, dynamic>> supPage = [];
    const Map<String, dynamic> data = {
      'companies': [
        // https://www.labnol.org/embed/google/drive/
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYSCtPDJmmip9gJP_Gmv1sbLMBugEqPdM4s2TAJPeXDl3szz7sDveE4uAdFhGtoyB602_JOqjnTd6XbIhNLe9hZvw9Fwhg=s1600',
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTKgHFS1O7pMu4NP3GdWJDrjF7dQNJFXUm3KCM07obKig4jQWhoKHhSutyymCPmID4yT91JcrnHaOaenS9uJzW4kBAM1A=s1600',
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYQQvKcY0aGcXw-tv4c3hcbKlT488FpRbLYExcSI9Y3dfJgXMlE9_b8jFsy_XK2-rRc88ycU_tYroovV3cIoLUywrTKs3w=s1600',
      ],
      'children': [
        {
          'type': 'column',
          'columns': 1,
          'children': [
            {
              'type': 'card',
              'link': 'https://github.com/Antunees',
              'name': 'Github',
              'description': 'Code repository',
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTXgU6jbXaasGWWSsHHRxA4u02UKJewdBU61QdWjON3SF36xKJND68gzN_UIT-32BVnULHJAfL-9GxXI2qkz0pZUkHFLQ=s2560',
            },
            {
              'type': 'card',
              'link':
                  'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
              'name': 'Linkedin',
              'description': 'Professional profile',
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
            },
          ],
        },
        {
          'type': 'section',
          'name': 'Squads',
          'columns': 2,
          'children': [
            {
              'type': 'page',
              'name': 'Dev',
              'children': devPage,
            },
            {
              'type': 'page',
              'name': 'Sup',
              'children': supPage,
            },
          ],
        },
        // Here below is just for testing
        {
          'type': 'page',
          'name': 'Dev',
          'children': devPage,
        },
        {
          'type': 'page',
          'name': 'Sup',
          'children': supPage,
        },
        {
          'type': 'column',
          'columns': 1,
          'children': [
            {
              'type': 'page',
              'name': 'Dev',
              'children': devPage,
            },
            {
              'type': 'page',
              'name': 'Sup',
              'children': supPage,
            },
          ],
        },
        {
          'type': 'section',
          'name': 'Hobbies',
          'columns': 2,
          'children': [
            {
              'type': 'card',
              'link':
                  'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
              'name': 'Linkedin',
              'description': 'Professional profile',
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
            },
            {
              'type': 'card',
              'link':
                  'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
              'name': 'Linkedin',
              'description': 'Professional profile',
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
            },
          ],
        },
        {
          'type': 'profile',
          'name': 'Heathcliff Andrew Ledger',
          'image':
              'https://lh3.googleusercontent.com/drive-viewer/AEYmBYSR2gN2G5qOrD0swF36Ge_6nwXko2mqQKgQB2a_Y50pFdzNZqML_LtZtEsC2u1koT7PT4zbeTodBWeS2U2UXmXShdJv9A=s2560',
          'description': 'software engineer',
          'links_as_icon': [
            {
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTXgU6jbXaasGWWSsHHRxA4u02UKJewdBU61QdWjON3SF36xKJND68gzN_UIT-32BVnULHJAfL-9GxXI2qkz0pZUkHFLQ=s2560',
              'link': 'https://github.com/Antunees',
            },
            {
              'icon':
                  'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
              'link':
                  'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
            },
          ],
        },
      ]
    };
    List<String> companiesIcons = data['companies'];
    List<Padding> companies = companiesIcons
        .map((companie) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl: companie,
                height: 250.0,
                placeholder: (context, url) => const SizedBox(
                    width: 250.0, child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Container(),
              ),
            ))
        .toList();

    Children childrens = Children(data: data['children']);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: companies),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
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
