import 'package:flutter/cupertino.dart';

class KnowMoreData {
  KnowMoreData({
    required this.imagePath,
    required this.title,
    required this.text,
    required this.function,
  });

  final String imagePath, title, text;
  final VoidCallback function;
}

List demoKnowMoreData = [
  KnowMoreData(
    imagePath: 'assets/images/brock-wegner-93auYv9FhFo-unsplash.jpg',
    title: 'Nubank Celular Seguro',
    text: '100% cobertura, 0% extresse. Simule agora mesmo.',
    function: () {},
  ),
  KnowMoreData(
    imagePath: 'assets/images/brooke-cagle-oTweoxMKdkA-unsplash.jpg',
    title: 'Seguro de Vida',
    text: 'Um seguro fácil de contratar e que cabe no seu bolso.',
    function: () {},
  ),
  KnowMoreData(
    imagePath: 'assets/images/brooke-cagle--uHVRvDr7pg-unsplash.jpg',
    title: 'Conta PJ',
    text:
        'A gente te ajuda a gerenciar suas finanças de um jeito fácil de se entender.',
    function: () {},
  ),
];
