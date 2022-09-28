import 'package:portifolio/src/features/home_feature/external/datasources/mock_datasource/course_activity_mock_list.dart';

class MockData implements ICourseDataSource {
  @override
  Future getData() async {
    return courses;
  }
}

abstract class ICourseDataSource {
  Future<dynamic> getData();
}
