import 'flavors.dart';

import '../../main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.fake;
  await runner.main();
}
