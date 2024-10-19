import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _combinedChoiceValues = prefs.getStringList('ff_combinedChoiceValues') ??
          _combinedChoiceValues;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _combinedChoiceValues = [];
  List<String> get combinedChoiceValues => _combinedChoiceValues;
  set combinedChoiceValues(List<String> value) {
    _combinedChoiceValues = value;
    prefs.setStringList('ff_combinedChoiceValues', value);
  }

  void addToCombinedChoiceValues(String value) {
    combinedChoiceValues.add(value);
    prefs.setStringList('ff_combinedChoiceValues', _combinedChoiceValues);
  }

  void removeFromCombinedChoiceValues(String value) {
    combinedChoiceValues.remove(value);
    prefs.setStringList('ff_combinedChoiceValues', _combinedChoiceValues);
  }

  void removeAtIndexFromCombinedChoiceValues(int index) {
    combinedChoiceValues.removeAt(index);
    prefs.setStringList('ff_combinedChoiceValues', _combinedChoiceValues);
  }

  void updateCombinedChoiceValuesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    combinedChoiceValues[index] = updateFn(_combinedChoiceValues[index]);
    prefs.setStringList('ff_combinedChoiceValues', _combinedChoiceValues);
  }

  void insertAtIndexInCombinedChoiceValues(int index, String value) {
    combinedChoiceValues.insert(index, value);
    prefs.setStringList('ff_combinedChoiceValues', _combinedChoiceValues);
  }

  List<int> _favouries = [];
  List<int> get favouries => _favouries;
  set favouries(List<int> value) {
    _favouries = value;
  }

  void addToFavouries(int value) {
    favouries.add(value);
  }

  void removeFromFavouries(int value) {
    favouries.remove(value);
  }

  void removeAtIndexFromFavouries(int index) {
    favouries.removeAt(index);
  }

  void updateFavouriesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    favouries[index] = updateFn(_favouries[index]);
  }

  void insertAtIndexInFavouries(int index, int value) {
    favouries.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
