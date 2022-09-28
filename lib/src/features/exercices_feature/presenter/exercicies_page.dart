import 'package:flutter/material.dart';
import 'package:portifolio/src/core/shared_widgets/custom_appbar.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';

class ExerciciePage extends StatelessWidget {
  final List<Exercicio> list;
  final String title;
  const ExerciciePage({super.key, required this.list, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custonAppBar(context, title),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 64,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor),
                        child: Center(child: Text('${index + 1}'))),
                    Text(list[index].title),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
