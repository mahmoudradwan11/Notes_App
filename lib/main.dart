import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/views/notes_view.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home:const NotesView(),
    );
  }
}
