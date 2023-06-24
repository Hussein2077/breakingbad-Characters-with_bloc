import 'package:breakingbad_with_bloc/data/models/characters_model.dart';
import 'package:breakingbad_with_bloc/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Characters>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((e) =>
            Characters.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
