import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsData {
  SettingsData({
    required this.icon,
    required this.name,
    required this.notifications,
    required this.onTap,
  });

  final IconData icon;
  final String name, notifications;
  final VoidCallback onTap;
}

List demoSettingsData = [
  SettingsData(
    icon: CupertinoIcons.heart,
    name: 'Seguro de Vida',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: CupertinoIcons.bell,
    name: 'Notificações',
    notifications: '2',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.help_outline_rounded,
    name: 'Me ajuda',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.person_outline_rounded,
    name: 'Editar dados do Perfil',
    notifications: 'Novo',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.format_align_center_outlined,
    name: 'Informe de rendimentos',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.shield_outlined,
    name: 'Segurança',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.pix_outlined,
    name: 'Configurar chaves Pix',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.store_mall_directory_outlined,
    name: 'Pedir conta PJ',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.account_balance_wallet_outlined,
    name: 'Configurar conta',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.credit_card,
    name: 'Configurar cartão',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.file_open_outlined,
    name: 'Sobre',
    notifications: '',
    onTap: () {},
  ),
  SettingsData(
    icon: Icons.subdirectory_arrow_left_rounded,
    name: 'Sair do aplicativo',
    notifications: '',
    onTap: () => exit(0),
  ),
];
