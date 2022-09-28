import 'package:portifolio/src/features/home_feature/domain/entities/course_activity_entity.dart';
import 'package:portifolio/src/features/home_feature/infra/repositories/course_repository.dart';

class GetAllCourses {
  ICourseRepository courseRepository;

  GetAllCourses({
    required this.courseRepository,
  });

  Future<List<CourseActitvityEntity>> call() async {
    List<CourseActitvityEntity> courses = await courseRepository.getCourses();

    return courses;
  }
}
