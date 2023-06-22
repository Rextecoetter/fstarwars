import 'package:flutter/material.dart';
import 'package:fstarwars/app/pages/inicial/inicial_page.dart';
import 'package:fstarwars/app/pages/inicial/inicial_page_bindings.dart';
import 'package:fstarwars/app/pages/splash/splash_page_bindings.dart';
import 'package:fstarwars/app/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class FstarwarsApp extends StatelessWidget {
  const FstarwarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF41A9AA)),
          useMaterial3: true,
        ),
        getPages: [
          GetPage(name: '/', page: () => const SplashPage(), binding: SplashPageBindings()),
          GetPage(name: '/inicial', page: () => const InicialPage(), binding: InicialPageBindings()),
        ]);
  }
}
