import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/modules/controllers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (loginController) {
        return Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: loginController.formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Card(
                              elevation: 2,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                ),
                                controller: loginController.emailController,
                                validator: (value) {
                                  if (value!.isEmpty) return "Add Email";

                                  if (!value.isEmail) return "Not valid email";

                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              elevation: 2,
                              child: TextFormField(
                                controller: loginController.passwordController,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  prefixIcon: const Icon(Icons.lock),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      loginController.changeVisiblePassword();
                                    },
                                    icon: loginController.isPasswordVisible
                                        ? const Icon(Icons.hide_image)
                                        : const Icon(Icons.remove_red_eye),
                                  ),                                  
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) return "Add Password";

                                  if (value.length < 8) return "Password needs 8 characters";

                                  return null;
                                },                                
                                obscureText: !loginController.isPasswordVisible,                                
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: loginController.login,
                          child: const Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
