import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zamzi_presenter/screens/root_screen.dart';

void main() {
  runApp(ZamziPresenter());
}

class ZamziPresenter extends StatelessWidget {
  ZamziPresenter({super.key});

  final Map<LogicalKeySet, Intent> _shortcuts = {
    LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: _shortcuts,
      child: MaterialApp(
        title: 'Zamzi Presenter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootScreen(),
      ),
    );
  }
}
