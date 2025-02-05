import 'package:test_rappi/domain/entities/genrer/genrer_entity.dart';
import 'package:test_rappi/domain/repositories/genrer_repository.dart';

GenrerEntity gnererAction = const GenrerEntity(id: 1, name: 'Action');
GenrerEntity gnererAdventure = const GenrerEntity(id: 2, name: 'Adventure');
GenrerEntity gnererAnimation = const GenrerEntity(id: 3, name: 'Animation');
GenrerEntity gnererComedy = const GenrerEntity(id: 4, name: 'Comedy');
GenrerEntity gnererCrime = const GenrerEntity(id: 5, name: 'Crime');
GenrerEntity gnererDocumentary = const GenrerEntity(id: 6, name: 'Documentary');
GenrerEntity gnererDrama = const GenrerEntity(id: 7, name: 'Drama');
GenrerEntity gnererFamily = const GenrerEntity(id: 8, name: 'Family');
GenrerEntity gnererFantasy = const GenrerEntity(id: 9, name: 'Fantasy');

class GenrerRepositoryFake extends GenrerRepository {
  static const String spKey = 'genrers';
  @override
  Future<GenrerEntity?> getGenrerById(int id) async {
    switch (id) {
      case 1:
        return gnererAction;
      case 2:
        return gnererAdventure;
      case 3:
        return gnererAnimation;
      case 4:
        return gnererComedy;
      case 5:
        return gnererCrime;
      case 6:
        return gnererDocumentary;
      case 7:
        return gnererDrama;
      case 8:
        return gnererFamily;
      case 9:
        return gnererFantasy;
      default:
        return null;
    }
  }

  @override
  Future<List<GenrerEntity>> getGenrers() async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value([
      gnererAction,
      gnererAdventure,
      gnererAnimation,
      gnererComedy,
      gnererCrime,
      gnererDocumentary,
      gnererDrama,
      gnererFamily,
      gnererFantasy,
    ]);
  }

  @override
  Future<void> saveGenrersLocal(List<GenrerEntity> genrers) async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value();
  }
}
