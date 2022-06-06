import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxarchitecture/app/presentation/widgets/main_button/main_button_android.dart';
import 'package:getxarchitecture/app/presentation/widgets/main_button/main_button_ios.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isIOS = GetPlatform.isIOS;

    return isIOS ? const MainButtonIOS() : const MainButtonAndroid();
  }
}