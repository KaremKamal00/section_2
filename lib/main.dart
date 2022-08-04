

import 'package:flutter/material.dart';
import 'package:task_section_3/modules/homepage/homepage.dart';

void main () {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:HomePage() ,);
  }
}
