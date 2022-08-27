// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone_app/api/data/account_data.dart';
import 'package:nubank_clone_app/api/data/settings_data.dart';
import 'package:nubank_clone_app/constants.dart';

class ProfileAndSettings extends StatelessWidget {
  const ProfileAndSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          ProfileInfo(),
          Column(
            children: demoSettingsData
                .map((e) => SettingOption(
                      icon: e.icon,
                      name: e.name,
                      notifications: e.notifications,
                      onTap: e.onTap,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class SettingOption extends StatelessWidget {
  const SettingOption({
    Key? key,
    required this.icon,
    required this.name,
    required this.notifications,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String name, notifications;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 2, color: greyColor)),
            color: Colors.white),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding * 0.8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  SizedBox(width: defaultPadding * 0.5),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  if (notifications != '')
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        notifications,
                        style: TextStyle(
                          height: 1.1,
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.black38,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: greyColor,
        child: Padding(
          padding: const EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
            bottom: defaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                constraints: const BoxConstraints(),
                padding: const EdgeInsets.only(
                  bottom: defaultPadding,
                  top: defaultPadding,
                ),
                color: Colors.black45,
                icon: const Icon(Icons.close),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(demoAccountData[0].image),
                  ),
                  const SizedBox(width: defaultPadding * 0.5),
                  Text(
                    demoAccountData[0].name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agência ${demoAccountData[0].agency} • Conta ${demoAccountData[0].account}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Banco ${demoAccountData[0].bank} • Nu Pagamentos S.A. - Instituição de Pagamento',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
