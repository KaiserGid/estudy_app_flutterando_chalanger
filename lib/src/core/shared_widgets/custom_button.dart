import 'package:flutter/material.dart';
import 'package:portifolio/src/features/exercices_feature/presenter/exercicies_page.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';

class CustomBottonWidget extends StatelessWidget {
  final List<Exercicio> list;
  final String title;
  const CustomBottonWidget({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      autofocus: false,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExerciciePage(
                      list: list,
                      title: title,
                    )));
      },
      child: Container(
        height: 34.5,
        width: 119,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(23)),
          // color: Color(0xff055AA3)),
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
            child: Text(
          'Ver Mais',
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 12),
        )),
      ),
    );
  }
}
