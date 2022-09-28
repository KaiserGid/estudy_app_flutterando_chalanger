import 'package:flutter/material.dart';

import 'package:portifolio/src/core/shared_widgets/custom_button.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String iconName;
  final int numberExercicies;
  final String description;
  final List<Exercicio> list;

  const CustomCardWidget({
    Key? key,
    required this.title,
    required this.iconName,
    required this.numberExercicies,
    required this.description,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(bottom: 21.5, left: 12, top: 10, right: 12),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(28),
        ),
        height: 220,
        width: 420,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.run_circle, size: 43),
                const SizedBox(width: 14),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2,
                ),
                const Spacer(),
                Text(
                  'Exercicios:',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(width: 10),
                Text(
                  numberExercicies.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.headline3,
            ),
            Row(
              children: [
                const ImageIcon(
                    AssetImage('assets/images/Icon_awesome-moon/github.png')),
                const SizedBox(width: 10),
                Text(
                  'Acessar código fonte',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white),
                ),
                const Spacer(),
                CustomBottonWidget(
                  list: list,
                  title: title,
                )
              ],
            )
          ],
        ));
  }
}
