import 'package:flutter/cupertino.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/course_activity_entity.dart';
import 'package:portifolio/src/features/home_feature/external/datasources/mock_datasource/mock_data.dart';
import 'package:portifolio/src/features/home_feature/infra/adapters/course_adapter.dart';

class CourseRepository implements ICourseRepository {
  ICourseDataSource dataSource;

  CourseRepository({
    required this.dataSource,
  });

  @override
  Future<List<CourseActitvityEntity>> getCourses() async {
    var result = await dataSource.getData();
    List<CourseActitvityEntity> list = [];
    for (var course in await dataSource.getData()) {
      list.add(await CourseAdapter.fromJson(course));
      debugPrint(course['name'].toString());
    }

    return list;
  }
}

abstract class ICourseRepository {
  Future<List<CourseActitvityEntity>> getCourses();
}
