import 'package:flutter/material.dart';
import 'package:my_tasks_material/pages/dashboard.dart';
import 'package:my_tasks_material/pages/forgat_password.dart';
import 'package:my_tasks_material/pages/new_tag.dart';
import 'package:my_tasks_material/pages/new_task.dart';
import 'package:my_tasks_material/pages/notifications.dart';
import 'package:my_tasks_material/pages/settings.dart';
import 'package:my_tasks_material/pages/sign_in.dart';
import 'package:my_tasks_material/pages/sign_up.dart';

void main() {
  runApp(const MyTasksMaterialApp());
}

class MyTasksMaterialApp extends StatelessWidget {
  const MyTasksMaterialApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tasks Material App',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.deepPurple),
      initialRoute: '/sign_in',
      routes: {
        '/sign_in': (context) => const SignIn(),
        '/sign_up': (context) => const SignUp(),
        '/forgat_password': (context) => const ForgatPassword(),
        '/dashboard': (context) => const Dashboard(),
        '/notifications': (context) => const Notifications(),
        '/settings': (context) => const Settings(),
        '/new_task': (context) => NewTask(),
        '/new_tag': (context) => const NewTag(),
      },
    );
  }
}
