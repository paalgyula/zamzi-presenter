import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fire_tv_listener/fire_tv_listener.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // @override
  final fn = FocusNode();

  String pressed = '- PRESS A BUTTON -';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    fn.dispose();
  }

  void rebuild() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Center(
            child: TextField(
              keyboardAppearance: Brightness.light,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Click me please'))
      ]),
    );
  }
}
