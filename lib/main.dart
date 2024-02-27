import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/service/navigator_services.dart';
import 'package:leap/core/service/service_locator.dart';
import 'package:leap/core/translations/translations.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_bloc.dart';
import 'package:leap/features/auth/presentation/controller/sign_up_bloc/sign_up_with_email_and_password_bloc.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_bloc.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_events.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_bloc.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_bloc.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_event.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_bloc.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_event.dart';
import 'package:leap/features/profile/presentation/controller/get_my_applications/get_my_applications_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServerLocator().init();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      fallbackLocale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      assetLoader: CodegenLoader(),
      path: 'lib/core/translations/',
      saveLocale: true,
      child: Builder(builder: (context) {
        return const MyApp();
      })));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginWithEmailAndPasswordBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignUpWithEmailAndPasswordBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetJobsBloc>()..add(GetJobsEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<GetInternshipsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetMyApplicationsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetInternshipsBySearchBloc>()..add(GetInternshipsBySearchEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<OptionsBloc>()
            ..add(const GetMajorEvent())
            ..add(const GetUniversityEvent())
            ..add(const GetCitiesEvent()),
        ),
      ],
      child: MaterialApp(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        navigatorKey: getIt<NavigationService>().navigatorKey,
        initialRoute: Routes.login,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 1)),
      ),
    );
  }
}
