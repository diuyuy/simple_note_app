import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'core/init/initialize_app.dart';
import 'core/router/router.dart';
import 'features/note/domain/repositories/note_repository.dart';
import 'features/note/presentation/bloc/bloc.dart';
import 'features/setting/domain/repositories/app_setting_repository.dart';
import 'features/setting/presentation/cubit/app_setting_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await initializeApp();

  final GetIt getIt = GetIt.instance;

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AppSettingCubit>(
          create: (context) {
            final appSettingRepository = getIt<AppSettingRepository>();

            return AppSettingCubit(appSettingRepository);
          },
        ),
        BlocProvider<NoteBloc>(
          create: (context) {
            final noteRepository = getIt<NoteRepository>();

            return NoteBloc(noteRepository);
          },
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          final appSetting = context.watch<AppSettingCubit>().state;

          return MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              textTheme: TextTheme(
                bodyMedium: TextStyle(fontSize: 10.0 + appSetting.fontSize),
              ),
              useMaterial3: true,
            ),
          );
        });
  }
}
