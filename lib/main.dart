import 'package:flutter/material.dart';
import 'package:reflactable_project/form_class.dart';
import 'package:reflectable/mirrors.dart';

import 'main.reflectable.dart';
import 'reflector.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    initializeReflectable();
    ClassMirror classMirror = reflector.reflectType(FormDeclaration) as ClassMirror;
    classMirror.instanceMembers.forEach((key, value) {
      print(value.simpleName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
