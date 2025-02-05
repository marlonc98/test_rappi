import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Locale> _options = [
  const Locale('es', 'ES'),
];

@override
Future<Locale> getLanguageApiImpl(String keyShared) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? languageCode = prefs.getString(keyShared);
  if (languageCode == null) {
    return _options.first;
  }
  return _options.firstWhere((element) => element.languageCode == languageCode);
}
