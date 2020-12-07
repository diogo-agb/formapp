import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

enum Person { Fisica, Juridica }

abstract class _FormControllerBase with Store {
  @observable
  int radioPerson = 0;

  @observable
  Person person = Person.Juridica;

  @action
  void handleRadioPerson(int value) {
    radioPerson = value;
    switch (radioPerson) {
      case 0:
        person = Person.Juridica;

        print('O valor é 0');
        break;
      case 1:
        person = Person.Fisica;

        print('O Valor é 1');
        break;
      default:
        print(person);
        print('Sem valor selecionado');
    }
  }

  String get personText {
    switch (person) {
      case Person.Juridica:
        return "Razão Social";
      case Person.Fisica:
        return "Nome";
      default:
        return '';
    }
  }

  String get personDoc {
    switch (person) {
      case Person.Juridica:
        return "CNPJ";
      case Person.Fisica:
        return "CPF";
      default:
        return '';
    }
  }
}
