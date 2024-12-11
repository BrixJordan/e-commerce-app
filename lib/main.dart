import 'package:crud/pages/landingpage.dart';
import 'package:crud/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://zkqjcqmymgzlifzwildv.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InprcWpjcW15bWd6bGlmendpbGR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM4MTMzMDksImV4cCI6MjA0OTM4OTMwOX0.vPr8eIoenENsPvEY8OovVdop86SLa8pIA4xghV59OSk');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}
