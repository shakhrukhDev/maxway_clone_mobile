import 'package:flutter/material.dart';
import 'package:maxway_clone/src/core/routes/routes_name.dart';
import 'package:maxway_clone/src/core/utils/app_images.dart';
import 'package:maxway_clone/src/presentation/main_page.dart';
import 'package:maxway_clone/src/presentation/pages/main/home/home_page.dart';
import 'package:maxway_clone/src/presentation/pages/splash/widgets/choose_lang_button_widget.dart';

import '../auth/check_code/check_code_page.dart';
import '../auth/login/login_page.dart';

class SplashLanguage extends StatefulWidget {
  const SplashLanguage({super.key});

  @override
  State<SplashLanguage> createState() => _SplashLanguageState();
}

class _SplashLanguageState extends State<SplashLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
        child: Column(
          children: [
            Image.asset(
              AppImages.splashScreen,
              width: 150,
              height: 150,
            ),
            const Row(
              children: [
                Text(
                  'Выберите язык:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ChooseLangButton(
              onTap: () {
                Navigator.pushNamed(context, RouteName.login);
              },
              lang: 'Uzbek',
              imgPath: 'uz_logo',
            ),
            const SizedBox(height: 15),
            ChooseLangButton(
              onTap: () {},
              lang: 'English',
              imgPath: 'en_logo',
            ),
            const SizedBox(height: 15),
            ChooseLangButton(
              onTap: () {},
              lang: 'Russian',
              imgPath: 'ru_logo',
            ),
          ],
        ),
      ),
    );
  }
}
