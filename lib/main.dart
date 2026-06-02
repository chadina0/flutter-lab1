import 'package:flutter/material.dart';
import 'models/lesson.dart';
import 'widgets/lesson_card.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 1',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Lesson> lessons = [
    Lesson(
      title: 'Програмування',
      time: '08:30',
    ),
    Lesson(
      title: 'Бази даних',
      time: '10:10',
    ),
    Lesson(
      title: 'Flutter',
      time: '11:50',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Розклад занять'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Список занять',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: lessons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: LessonCard(
                      title: lessons[index].title,
                      time: lessons[index].time,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}