import 'package:flutter/material.dart';
import 'package:fstarwars/app/fstarwars_app.dart';
import 'app/config/env/env.dart';

void main() async {
  await Env.i.load();
  runApp(const FstarwarsApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF41A9AA)),
//           useMaterial3: true,
//         ),
//         getPages: [
//           GetPage(name: '/', page: () => const SplashPage()),
//           GetPage(name: '/inicial', page: () => const InicialPage()),
//         ]);
//   }
// }
