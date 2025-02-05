import 'package:get_it/get_it.dart';
import 'package:test_rappi/data/repositories/localization/localization_repository_dev.dart';
import 'package:test_rappi/data/repositories/localization/localization_repository_fake.dart';
import 'package:test_rappi/data/repositories/localization/localization_repository_impl.dart';
import 'package:test_rappi/domain/states/Localization/localization_state.dart';
import 'package:test_rappi/domain/repositories/localization_repository.dart';
import 'package:test_rappi/domain/use_cases/default/load_use_case.dart';
import 'package:test_rappi/flavors/flavors.dart';
import 'package:test_rappi/presentation/providers/states/localization_state_impl.dart';

enum ModeDependencyInjection { fake, dev, prod }

class DependencyInjection {
  DependencyInjection() {
    GetIt getIt = GetIt.instance;
    Flavor? mode = F.appFlavor;
    //#region ------------- repositories -------------------------//
    if (mode == Flavor.fake) {
      getIt.registerSingleton<LocalizationRepository>(
          LocalizationRepositoryFake());
    } else if (mode == Flavor.dev) {
      getIt.registerSingleton<LocalizationRepository>(
          LocalizationRepositoryDev());
    } else {
      getIt.registerSingleton<LocalizationRepository>(
          LocalizationRepositoryImpl());
    }
    //#endregion repositories

    //#region ------------- providers -------------------------//
    getIt.registerSingleton<LocalizationState>(LocalizationStateImpl());
    //#endregion

    //#region ------------- use cases -------------------------//

    //#region default
    getIt.registerSingleton<LoadUseCase>(LoadUseCase(
        localizationRepository: getIt.get<LocalizationRepository>(),
        localizationState: getIt.get<LocalizationState>()));
    //#endregion
    //#endregion
  }
}
