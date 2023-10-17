import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/core/routes/routes_name.dart';
import 'package:maxway_clone/src/core/utils/app_colors.dart';
import 'package:maxway_clone/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:maxway_clone/src/presentation/main_page.dart';
import 'package:maxway_clone/src/presentation/pages/auth/register/registr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status.isError) {
          Navigator.pushNamed(context, RouteName.register,arguments: phoneNumber.text);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 8, bottom: 25),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      ),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  const Text(
                    'Регистрация',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 50),
                  const Text('Номер телефона'),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.phone,
                    maxLength: 9,
                    controller: phoneNumber,
                    decoration: InputDecoration(
                      fillColor: AppColors.defaultYellow,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: AppColors.defaultYellow),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: AppColors.defaultYellow),
                      ),
                      suffixText: '',
                      // Empty suffix text
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '+998',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            CheckPhoneEvent(
                              phone: '+998${phoneNumber.text}',
                            ),
                          );
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
        );
      },
    );
  }
}
