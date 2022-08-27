import 'package:flutter/material.dart';

class TipsData {
  final String preffixText, textLink, suffixText;
  final VoidCallback functionOnTap;

  TipsData({
    required this.preffixText,
    required this.textLink,
    required this.suffixText,
    required this.functionOnTap,
  });
}

List demoTipsData = [
  TipsData(
    preffixText: 'Salve amigos da burocracia. ',
    textLink: 'Faça um convite para o Nubank',
    suffixText: '',
    functionOnTap: () {},
  ),
  TipsData(
    preffixText: 'Conheça a ',
    textLink: 'conta PJ ',
    suffixText: 'prática e livre de burocracia para seu negócio',
    functionOnTap: () {},
  ),
  TipsData(
    preffixText: '',
    textLink: 'NuEnsina: ',
    suffixText: 'aprenda novas formas de lidar com sua grana',
    functionOnTap: () {},
  ),
];
