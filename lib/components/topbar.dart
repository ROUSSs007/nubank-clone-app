import 'package:flutter/material.dart';

import '../constants.dart';

import '../pages/home/screens/home/components/profile_button.dart';

class TopBarHome extends StatelessWidget {
  const TopBarHome({
    Key? key,
    this.showWelcome = true,
  }) : super(key: key);

  final bool showWelcome;

  static ValueNotifier<bool> showData = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: defaultPadding,
        bottom: defaultPadding,
      ),
      color: primaryColor,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Icons on top bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProfileButton(),
                Container(
                  margin: const EdgeInsets.only(right: defaultPadding * 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {
                          showData.value = !showData.value;
                        },
                        icon: ValueListenableBuilder(
                          valueListenable: showData,
                          builder: (context, value, _) {
                            if (value == true) {
                              return const Icon(Icons.remove_red_eye);
                            } else {
                              return const Icon(Icons.remove_red_eye_outlined);
                            }
                          },
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.question_mark_rounded),
                      ),
                      IconButton(
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(),
                          iconSize: 25,
                          color: Colors.white,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => const AlertDialog(
                                title: Text(
                                    'Congrats! You just found an example button! 🥳🎉'),
                                content: Text(
                                  "Sorry, the button was there just for design or example purposes. :(",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.person_add_alt_1_outlined)),
                    ],
                  ),
                )
              ],
            ),
            showWelcome
                ? const Padding(
                    padding: EdgeInsets.only(
                      top: defaultPadding * 1.2,
                      left: defaultPadding,
                    ),
                    child: Text(
                      "Olá, Gabriel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
