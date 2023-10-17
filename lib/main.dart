import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:maxway_clone/src/core/routes/app_routes.dart';
import 'package:maxway_clone/src/core/routes/routes_name.dart';
import 'package:maxway_clone/src/injecter_container.dart';
import 'package:maxway_clone/src/presentation/bloc/home/home_bloc.dart';
import 'package:maxway_clone/src/presentation/bloc/main/main_bloc.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<MainBloc>()),
        BlocProvider(create: (_) => sl<HomeBloc>()),
      ],
      child: const KeyboardDismisser(
        child: ScreenUtilInit(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RouteName.main,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          ),
        ),
      ),
    );
  }
}

/// flutter packages pub run build_runner build --delete-conflicting-outputs