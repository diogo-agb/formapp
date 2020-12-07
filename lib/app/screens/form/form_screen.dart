import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import './form_controller.dart';

class FormScreen extends StatelessWidget {
  final controller = FormController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.red,
        width: 500,
        height: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    _buildRadio(
                      'Pessoa Jurídica',
                      0,
                    ),
                    _buildRadio(
                      'Pessoa Física',
                      1,
                    ),
                    Observer(
                      builder: (context) {
                        return TextFormField(
                          decoration: InputDecoration(
                            labelText: controller.personText,
                          ),
                        );
                      },
                    ),
                    Observer(
                      builder: (context) {
                        return TextFormField(
                          decoration: InputDecoration(
                            labelText: controller.personDoc,
                          ),
                        );
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Cidade - Origem'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Cidade - Destino'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Cidade - Destino'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Cidade - Destino'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Cidade - Destino'),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Cidade - Destino'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Observer _buildRadio(String title, int value) {
    return Observer(
      builder: (context) {
        return RadioListTile(
          activeColor: Colors.green,
          title: Text('$title'),
          value: value,
          groupValue: controller.radioPerson,
          onChanged: controller.handleRadioPerson,
        );
      },
    );
  }
}
