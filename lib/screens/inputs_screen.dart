import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'first_name': 'Rasec',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              child: Column(
                children: [
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        //TODO: imprimir valores del formulario
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))))
                ],
              ),
            )),
      ),
    );
  }
}
