import 'package:games_info/repository/data_source/game_data_source.dart';
import 'package:games_info/repository/model/model_barrel.dart';

class GameRepository {
  const GameRepository({
    required this.data_source,
  });
  final GameDataSource data_source;

  Future<Game> getGames() async => data_source.getGames();
  Future<List<Genre>> getGenres() async => data_source.getGenres();
  Future<List<Result>> getGamesByCategory(int genreId) async =>
      data_source.getGamesByCategory(genreId);
}
