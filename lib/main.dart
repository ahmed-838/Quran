import 'package:flutter/material.dart';
import 'pages/sheikh_page.dart';
import 'pages/quran_list_page.dart';
import 'pages/sound_player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran Sound Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SheikhPage(),
      routes: {
        '/quranList': (context) => const QuranListPage(),
        '/soundPlayer': (context) {
          // Extract arguments
          final Map<String, String>? args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

          // Extract Surah number and name from arguments
          final String surahNumber = args?['number'] ?? '';
          final String surahName = args?['name'] ?? '';

          // Return the SoundPlayerPage with extracted arguments
          return SoundPlayerPage(
            surahNumber: surahNumber,
            surahName: surahName,
          );
        },
      },
    );
  }
}
