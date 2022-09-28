import 'package:portifolio/src/features/home_feature/domain/entities/course_activity_entity.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/exercice_entity.dart';
import 'package:portifolio/src/features/home_feature/infra/adapters/exercicio_adapter.dart';

class CourseAdapter {
  static Future<CourseActitvityEntity> fromJson(dynamic json) async {
    List<Exercicio> listMap = [];
    for (var element in json['exercices']) {
      listMap.add(ExercicioAdapter.fromJson(element));
    }

    return CourseActitvityEntity(
        name: json['name'],
        description: json['description'],
        image: '',
        exercicios: listMap);
  }
}
