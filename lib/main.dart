import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'core/init/initialize_app.dart';
import 'core/router/router.dart';
import 'features/note/domain/usecases/note_usecase/create_note_use_case.dart';
import 'features/note/domain/usecases/note_usecase/delete_note_use_case.dart';
import 'features/note/domain/usecases/note_usecase/load_notes_use_case.dart';
import 'features/note/domain/usecases/note_usecase/reorder_notes_use_case.dart';
import 'features/note/domain/usecases/note_usecase/update_note_use_case.dart';
import 'features/note/presentation/bloc/note_bloc/note_bloc.dart';
import 'features/setting/domain/repositories/app_setting_repository.dart';
import 'features/setting/presentation/cubit/app_setting_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await initializeApp();

  final GetIt getIt = GetIt.instance;

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ko', 'KR')],
      path: 'lib/core/translations',
      fallbackLocale: Locale('en'),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppSettingCubit>(
            create: (context) {
              final appSettingRepository = getIt<AppSettingRepository>();

              return AppSettingCubit(appSettingRepository);
            },
          ),
          BlocProvider<NoteBloc>(
            create: (context) {
              final createNoteUseCase = getIt<CreateNoteUseCase>();
              final loadNotesUseCase = getIt<LoadNotesUseCase>();
              final updateNoteUseCase = getIt<UpdateNoteUseCase>();
              final deleteNoteUseCase = getIt<DeleteNoteUseCase>();
              final reorderNotesUseCase = getIt<ReorderNotesUseCase>();

              return NoteBloc(
                createNoteUseCase: createNoteUseCase,
                loadNotesUseCase: loadNotesUseCase,
                updateNoteUseCase: updateNoteUseCase,
                deleteNoteUseCase: deleteNoteUseCase,
                reorderNotesUseCase: reorderNotesUseCase,
              )..add(NoteEvent.loadNotes());
            },
          ),
        ],
        child: MyApp(),
      ),
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
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              textTheme: TextTheme(
                bodyLarge: TextStyle(fontSize: (16 + appSetting.fontSize).sp),
                bodyMedium: TextStyle(fontSize: (10 + appSetting.fontSize).sp),
                bodySmall: TextStyle(fontSize: (8 + appSetting.fontSize).sp),
              ),
              useMaterial3: true,
            ),
          );
        });
  }
}
