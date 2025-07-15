import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitara_task/contact_screen.dart';
import 'package:guitara_task/my_home_page.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

void main() {
  final client = StreamVideo(
    'mmhfdzb5evj2',
    user: User.regular(userId: 'Bastila_Shan', role: 'admin', name: 'John Doe'),
    userToken: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0Jhc3RpbGFfU2hhbiIsInVzZXJfaWQiOiJCYXN0aWxhX1NoYW4iLCJ2YWxpZGl0eV9pbl9zZWNvbmRzIjo2MDQ4MDAsImlhdCI6MTc1MjUxNDYwMiwiZXhwIjoxNzUzMTE5NDAyfQ.3V3K15yEqUwTdxGD1SgpHCS-HQSHWLFTUZveSdBFf7o',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: MyHomePage(),
    );
  }
}





