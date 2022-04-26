import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Login'),
        Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => controller.email.value = value,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) => controller.emailValidator(value),
              ),
              TextFormField(
                onChanged: (value) => controller.password.value = value,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              ElevatedButton(
                onPressed: () => controller.login(),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
