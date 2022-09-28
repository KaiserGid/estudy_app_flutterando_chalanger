import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';

class CourseActitvityEntity {
  String name;

  String description;
  String image;
  List<Exercicio> exercicios;

  CourseActitvityEntity({
    required this.name,
    required this.description,
    required this.image,
    required this.exercicios,
  });
}
