import 'package:flutter/material.dart';
import 'package:rick_morty_api/model/character/character.dart';
import 'package:rick_morty_api/model/character/list_characters.dart';
import 'package:rick_morty_api/repository/repository.dart';
import 'package:rick_morty_api/view/card.dart';
import 'package:get/get.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final _restClient = Get.find<RestClient>();

  List<Character> _characters = [];

  getCharacters() async {
    ListCharacters c = await _restClient.getCharacters();
    _characters = c.list;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffebf09e),
        onPressed: () async => await getCharacters(),
        child: const Icon(
          Icons.add,
          color: Color(0xff00b0c8),
        ),
      ),
      appBar: _preferredSize(),
      body: _characters.isEmpty
          ? Center(
              child: Text("Press the button to fetch the characters!"),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2.5),
              itemCount: _characters.length,
              itemBuilder: (context, index) => CardCharacter(
                _characters[index].image,
                _characters[index].id,
                _characters[index].name,
                _characters[index].species,
                _characters[index].origin.name,
              ),
            ),
    );
  }

  _preferredSize() => PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: _appBarDecoration(),
          child: _appBarChild(),
        ),
      );

  _appBarDecoration() => const BoxDecoration(
        gradient:
            LinearGradient(transform: GradientRotation(10.0), colors: <Color>[
          Color(0xffebf09e),
          Color(0xffb8d423),
          Color(0xff149936),
        ]),
      );

  _appBarChild() => SafeArea(
        child: Center(
          child: ListTile(
            title: const Center(
              child: Text(
                "Rick and Morty",
                style: TextStyle(fontFamily: 'GetSchwifty', fontSize: 35),
              ),
            ),
            textColor: const Color(0xff00b0c8),
            trailing: IconButton(
              icon: const Icon(
                Icons.search,
                size: 20,
              ),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      );
}
