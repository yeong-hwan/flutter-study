import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void home() {
  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),

    GoRoute(
      path: '/classA',
      builder: (context, state) => ClassA(),
      routes: [
        GoRoute(
          path : 'studentA',
          builder: (context, state) => StudentA(),
        ),

      ],
    ),

    GoRoute(
      name : 'classB',
      path: '/classB',
      builder: (context, state) => ClassB(),
      routes : [
        GoRoute(
          name: 'studentB',
          path: 'studentB',
          builder: (context, state) => StudentB(),

        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Go router',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (
        title: const Text('HomePage'),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/classA'),
              child: const Text('classA'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.pushNamed('classB'),
              child: const Text('classB'),
            ),
          ],
        ),
      ),
    );
  }
}


class ClassA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (
        title: const Text('ClassA'),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/classA/studentA'),
              child: const Text('studentA'),
            ),
          ],
        ),
      ),
    );
  }
}


class StudentA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (
        title: const Text('StudentA'),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            const Text('This is Student A')
          ],
        ),
      ),
    );
  }
}

class ClassB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (
        title: const Text('ClassB'),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushNamed('studentB'),
              child: const Text('studentB'),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (
        title: const Text('StudentB'),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            const Text('This is Student B'),
          ],
        ),
      ),
    );
  }
}