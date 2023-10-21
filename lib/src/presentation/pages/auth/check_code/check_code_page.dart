import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/core/routes/routes_name.dart';
import 'package:maxway_clone/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:maxway_clone/src/core/utils/app_colors.dart';
import 'package:maxway_clone/src/presentation/pages/main/home/home_page.dart';

class CheckCodePage extends StatefulWidget {
  const CheckCodePage({super.key});

  @override
  State<CheckCodePage> createState() => _CheckCodePageState();
}

class _CheckCodePageState extends State<CheckCodePage> {
  final TextEditingController pinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.registration!) {
          Navigator.pushNamed(context, RouteName.register);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 8, bottom: 25),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                      )),
                ),
                const Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 50),
                Pinput(
                  length: 6,
                  controller: pinput,
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    backgroundColor: AppColors.defaultYellow,
                    minimumSize: const Size(
                      double.infinity,
                      55,
                    ),
                  ),
                  child: const Text(
                    'Продолжить',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
