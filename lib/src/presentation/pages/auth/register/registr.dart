import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/core/utils/app_colors.dart';
import 'package:maxway_clone/src/presentation/bloc/auth/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),),
                 const SizedBox(height: 50),
                const Text(
                  'Ism Familiya',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 200),
                const Text('Ism Familiya'),
                const SizedBox(height: 5),
                TextField(
                  cursorColor: AppColors.defaultYellow,
                  decoration: InputDecoration(
                    hintText: 'Isminggizni Kiriting',
                    fillColor: AppColors.defaultYellow,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: AppColors.defaultYellow),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: AppColors.defaultYellow),
                    ),
                    suffixText: '',
                    // Empty suffix text
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      CheckPhoneEvent(
                        phone: '+998${widget.phoneNumber}',
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
        ));
  }
}
