// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormController on _FormControllerBase, Store {
  final _$radioPersonAtom = Atom(name: '_FormControllerBase.radioPerson');

  @override
  int get radioPerson {
    _$radioPersonAtom.reportRead();
    return super.radioPerson;
  }

  @override
  set radioPerson(int value) {
    _$radioPersonAtom.reportWrite(value, super.radioPerson, () {
      super.radioPerson = value;
    });
  }

  final _$personAtom = Atom(name: '_FormControllerBase.person');

  @override
  Person get person {
    _$personAtom.reportRead();
    return super.person;
  }

  @override
  set person(Person value) {
    _$personAtom.reportWrite(value, super.person, () {
      super.person = value;
    });
  }

  final _$_FormControllerBaseActionController =
      ActionController(name: '_FormControllerBase');

  @override
  void handleRadioPerson(int value) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.handleRadioPerson');
    try {
      return super.handleRadioPerson(value);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
radioPerson: ${radioPerson},
person: ${person}
    ''';
  }
}
