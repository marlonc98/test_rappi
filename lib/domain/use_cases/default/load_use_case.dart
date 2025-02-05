import 'package:test_rappi/domain/repositories/localization_repository.dart';
import 'package:test_rappi/domain/states/Localization/localization_state.dart';

class LoadUseCase {
  final LocalizationRepository localizationRepository;
  final LocalizationState localizationState;

  LoadUseCase({
    required this.localizationState,
    required this.localizationRepository,
  });

  Future<void> call() async {
    final locale = await localizationRepository.getLanguage();
    localizationState.locale = locale;
  }
}
