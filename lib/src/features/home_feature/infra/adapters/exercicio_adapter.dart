import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';

class ExercicioAdapter {
  static Exercicio fromJson(dynamic json) {
    return Exercicio(title: json['title']);
  }
}
