import 'package:flutter/material.dart';

import 'home_screen.dart';
main()
{
runApp(
Myapp()
);
}
class Myapp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Homescreen()
);
  }
}



