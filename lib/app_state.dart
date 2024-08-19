import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _supplierSearch = '';
  String get supplierSearch => _supplierSearch;
  set supplierSearch(String value) {
    _supplierSearch = value;
  }

  String _selectedOption = '';
  String get selectedOption => _selectedOption;
  set selectedOption(String value) {
    _selectedOption = value;
  }

  String _optionDescription = '';
  String get optionDescription => _optionDescription;
  set optionDescription(String value) {
    _optionDescription = value;
  }

  List<dynamic> _sustainabilityList = [];
  List<dynamic> get sustainabilityList => _sustainabilityList;
  set sustainabilityList(List<dynamic> value) {
    _sustainabilityList = value;
  }

  void addToSustainabilityList(dynamic value) {
    sustainabilityList.add(value);
  }

  void removeFromSustainabilityList(dynamic value) {
    sustainabilityList.remove(value);
  }

  void removeAtIndexFromSustainabilityList(int index) {
    sustainabilityList.removeAt(index);
  }

  void updateSustainabilityListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    sustainabilityList[index] = updateFn(_sustainabilityList[index]);
  }

  void insertAtIndexInSustainabilityList(int index, dynamic value) {
    sustainabilityList.insert(index, value);
  }

  List<dynamic> _riskList = [];
  List<dynamic> get riskList => _riskList;
  set riskList(List<dynamic> value) {
    _riskList = value;
  }

  void addToRiskList(dynamic value) {
    riskList.add(value);
  }

  void removeFromRiskList(dynamic value) {
    riskList.remove(value);
  }

  void removeAtIndexFromRiskList(int index) {
    riskList.removeAt(index);
  }

  void updateRiskListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    riskList[index] = updateFn(_riskList[index]);
  }

  void insertAtIndexInRiskList(int index, dynamic value) {
    riskList.insert(index, value);
  }

  List<dynamic> _reliabilityList = [];
  List<dynamic> get reliabilityList => _reliabilityList;
  set reliabilityList(List<dynamic> value) {
    _reliabilityList = value;
  }

  void addToReliabilityList(dynamic value) {
    reliabilityList.add(value);
  }

  void removeFromReliabilityList(dynamic value) {
    reliabilityList.remove(value);
  }

  void removeAtIndexFromReliabilityList(int index) {
    reliabilityList.removeAt(index);
  }

  void updateReliabilityListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    reliabilityList[index] = updateFn(_reliabilityList[index]);
  }

  void insertAtIndexInReliabilityList(int index, dynamic value) {
    reliabilityList.insert(index, value);
  }

  List<dynamic> _combinedList = [];
  List<dynamic> get combinedList => _combinedList;
  set combinedList(List<dynamic> value) {
    _combinedList = value;
  }

  void addToCombinedList(dynamic value) {
    combinedList.add(value);
  }

  void removeFromCombinedList(dynamic value) {
    combinedList.remove(value);
  }

  void removeAtIndexFromCombinedList(int index) {
    combinedList.removeAt(index);
  }

  void updateCombinedListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    combinedList[index] = updateFn(_combinedList[index]);
  }

  void insertAtIndexInCombinedList(int index, dynamic value) {
    combinedList.insert(index, value);
  }
}
