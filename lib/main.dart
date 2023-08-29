import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app_getx/users/authentication/log_in_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clothes Store App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(            
        primarySwatch: Colors.purple,
      ),
      home:  FutureBuilder(
          builder: (context, dataSnapShot)
          {
            return LogInScreen();
          })
    );
  }
}
// https://www.youtube.com/watch?v=ljk_P7UZ3wI&list=PLxefhmF0pcPnvPRyQZi8UXptFcKZZ1fkA&index=6
