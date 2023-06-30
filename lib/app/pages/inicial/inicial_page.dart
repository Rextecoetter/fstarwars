import 'package:flutter/material.dart';
import 'package:fstarwars/app/pages/inicial/inicial_page_controller.dart';
import 'package:fstarwars/app/pages/inicial/widgets/inicial_page_character_widget.dart';
import 'package:get/get.dart';

class InicialPage extends GetView<InicialPageController> {
  const InicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController characterNameEC = TextEditingController();
    final formKey = GlobalKey<FormState>();

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Form(
              key: formKey,
              child: TextFormField(
                onChanged: (value) {
                  controller.filteredCharacterList = controller.getFiltered(characterNameEC.text).obs;
                },
                controller: characterNameEC,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Pesquisar personagem',
                  hintStyle: TextStyle(fontFamily: 'DGalaxy'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0XFF41A9AA),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0XFF41A9AA),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Obx(
              () {
                return ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: controller.filteredCharacterList.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InicialPageCharacterWidget(
                      preCharacterModel: controller.filteredCharacterList[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
