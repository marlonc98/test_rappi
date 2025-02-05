import 'package:test_rappi/data/repositories/genrer/api/get_all_genres_api_impl.dart';
import 'package:test_rappi/domain/entities/genrer/genrer_entity.dart';
import 'package:test_rappi/domain/repositories/genrer_repository.dart';

class GenrerRepositoryDev extends GenrerRepository {
  static const String spKey = 'genrers';
  @override
  Future<List<GenrerEntity>> getGenrers() => getAllGenresApiImpl();
}
