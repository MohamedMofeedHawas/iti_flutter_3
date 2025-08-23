
import 'package:flutter/material.dart';

import 'package:iti_flutter_3/splach/view.dart';




void main() => runApp(MyAppScreen());

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(theme: ThemeData(

        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 23,
            fontWeight: FontWeight.bold,

          ),
        )
      ),
          debugShowCheckedModeBanner: false,
          home:SplachScreen(),

      ),
    );
  }
}

