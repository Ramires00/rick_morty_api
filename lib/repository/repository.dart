import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:rick_morty_api/constants.dart';
import 'package:rick_morty_api/model/character/list_characters.dart';
import 'package:rick_morty_api/model/episode/list_episodes.dart';

part 'repository.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(endPointCharacters)
  Future<ListCharacters> getCharacters();

  // @GET(endPointLocations)
  // Future<List<Locations>> getLocations();

  @GET(endPointEpisodes)
  Future<ListEpisodes> getEpisodes();
}
