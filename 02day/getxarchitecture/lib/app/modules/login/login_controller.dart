import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/business/repositories/security_repository.dart';
import 'package:getxarchitecture/app/utils/helpers/base_controller.dart';
import 'package:getxarchitecture/app/utils/helpers/loading.dart';

class LoginController extends BaseController {
  final _securityRepository = Get.find<SecurityRepository>();

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController(text: "pedro1@test.com");
  final passwordController = TextEditingController(text: "Test1234!");

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  void changeVisiblePassword() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  Future<void> login() async {
    try {
      if (formKey.currentState == null) return;

      final isValid = formKey.currentState!.validate();

      print("isValid: $isValid");

      if (!isValid) return;

      Loading().showLoading();      
      final response = await _securityRepository.login(
        email: emailController.text,
        password: passwordController.text,
      );
      Loading().hideLoading();

      if (response.ok) {
        // Navigate to home
      }
    } catch (e) {
      handleError(e);
    }
  }
}
