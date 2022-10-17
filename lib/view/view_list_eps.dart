import 'package:flutter/material.dart';
import 'package:rick_morty_api/model/episode/list_episodes.dart';
import 'package:rick_morty_api/repository/repository.dart';
import 'package:get/get.dart';

class ViewListEps extends StatelessWidget {
  ViewListEps({super.key});

  final RestClient _restClient = Get.find<RestClient>();

  final RxList<String> _seasons = RxList();

  getEps() async {
    ListEpisodes eps = await _restClient.getEpisodes();
    _seasons.value = eps.list
        .map<String>(
          (ep) => ep.episode.substring(
            ep.episode.indexOf('S'),
            ep.episode.indexOf('E'),
          ),
        )
        .toSet()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffebf09e),
        onPressed: () async => await getEps(),
        child: const Icon(
          Icons.add,
          color: Color(0xff00b0c8),
        ),
      ),
      body: _seasons.value.isEmpty
          ? Center(
              child: Text("Click the button to get the seasons"),
            )
          : Container(
              child: Center(
                child: ListView.builder(
                  padding: EdgeInsets.all(100),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.lightGreen,
                      child: ListTile(
                        title: Text(_seasons[index]),
                      ),
                    );
                  },
                  itemCount: _seasons.length,
                ),
              ),
            ),
    );
  }
}
