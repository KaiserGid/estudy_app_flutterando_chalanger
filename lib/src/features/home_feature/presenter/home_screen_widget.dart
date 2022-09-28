import 'package:flutter/material.dart';
import 'package:portifolio/src/core/shared_widgets/custom_appbar.dart';
import 'package:portifolio/src/core/shared_widgets/custom_card.dart';
import 'package:portifolio/src/features/home_feature/domain/entities/course_activity_entity.dart';
import 'package:portifolio/src/features/home_feature/domain/usecase/course_usecase/get_all_courses.dart';
import 'package:portifolio/src/features/home_feature/external/datasources/mock_datasource/mock_data.dart';
import 'package:portifolio/src/features/home_feature/infra/repositories/course_repository.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final title = 'Atividades';

  @override
  Widget build(BuildContext context) {
    final dataSource = MockData();
    final coursesRepository = CourseRepository(dataSource: dataSource);
    final getAllCourses = GetAllCourses(courseRepository: coursesRepository);
    return Scaffold(
      appBar: custonAppBar(context, title),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle_outlined,
                size: 24,
              ),
              label: 'Atividades'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle_outlined,
                size: 24,
              ),
              label: 'Repositorios'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              label: 'Sobre o dev'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: FutureBuilder<List<CourseActitvityEntity>>(
          future: getAllCourses.call(),
          builder: (context, snapshot) => ListView.builder(
              physics: const ScrollPhysics(),
              itemCount: snapshot.hasData ? snapshot.data?.length : 0,
              itemBuilder: (_, index) {
                if (snapshot.hasData) {
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CustomCardWidget(
                        list: snapshot.data![index].exercicios,
                        title: snapshot.data![index].name,
                        numberExercicies:
                            snapshot.data![index].exercicios.length,
                        description: snapshot.data![index].description,
                        iconName: snapshot.data![index].image,
                      ));
                } else if (snapshot.hasError) {
                  return Center(
                    child: Container(
                        color: Theme.of(context).primaryColor,
                        child: const Text('Sem Nenhum curso')),
                  );
                }
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
