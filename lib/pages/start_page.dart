import 'package:flutter/material.dart';
import 'package:intranet_links/pages/children.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String, dynamic> data = {
      'companies': [
        // https://www.labnol.org/embed/google/drive/
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYSCtPDJmmip9gJP_Gmv1sbLMBugEqPdM4s2TAJPeXDl3szz7sDveE4uAdFhGtoyB602_JOqjnTd6XbIhNLe9hZvw9Fwhg=s1600',
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTKgHFS1O7pMu4NP3GdWJDrjF7dQNJFXUm3KCM07obKig4jQWhoKHhSutyymCPmID4yT91JcrnHaOaenS9uJzW4kBAM1A=s1600',
        'https://lh3.googleusercontent.com/drive-viewer/AEYmBYQQvKcY0aGcXw-tv4c3hcbKlT488FpRbLYExcSI9Y3dfJgXMlE9_b8jFsy_XK2-rRc88ycU_tYroovV3cIoLUywrTKs3w=s1600',
      ],
      'children': [
        {
          'type': 'card',
          'link': 'https://github.com/Antunees',
          'name': 'Github',
          'description': 'Code repository',
          'icon':
              'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTXgU6jbXaasGWWSsHHRxA4u02UKJewdBU61QdWjON3SF36xKJND68gzN_UIT-32BVnULHJAfL-9GxXI2qkz0pZUkHFLQ=s2560',
          'children': [],
        },
        {
          'type': 'card',
          'link': 'https://www.linkedin.com/in/cau%C3%AA-antunes-31437510a/',
          'name': 'Linkedin',
          'description': 'Professional profile',
          'icon':
              'https://lh3.googleusercontent.com/drive-viewer/AEYmBYTf6lrYUWpjOYsAYzPSzDyqwHXLme6utcBqLXqVXvnEIBFOHXsTotugGXyvflJGuGYGlX0eR55lHdmL8NiQdMgHyOQ3bg=s2560',
          'children': [],
        },
      ]
    };
    List<String> companiesIcons = data['companies'];
    List<Padding> companies = companiesIcons
        .map((companie) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                companie,
                height: 250.0,
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Row(children: companies),
                const SizedBox(
                  height: 30.0,
                ),
                Children(data: data['children']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
