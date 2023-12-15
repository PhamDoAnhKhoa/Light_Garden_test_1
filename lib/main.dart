import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:metaqiz/home_screen.dart';
import 'package:metaqiz/main_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MetaQiz());
}
                                                                                                                                                                                                                                                                                                                                        
class MetaQiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MetaQiz',
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => main_screen(),
        'home': (context) => home_screen(),
      },
    );
  }
}
