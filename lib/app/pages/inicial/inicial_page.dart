import 'package:flutter/material.dart';
import 'package:fstarwars/app/pages/inicial/inicial_page_controller.dart';
import 'package:get/get.dart';

class InicialPage extends GetView<InicialPageController> {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFfdfcd5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFFfdfcd5),
        title: const Text(
          'Personagens',
          style: TextStyle(
            fontFamily: 'DGalaxyOut',
            color: Color(0XFF41A9AA),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
