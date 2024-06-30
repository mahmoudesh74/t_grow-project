import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/data/cubits/recently/recently_cubit.dart';
import 'package:t_grow/presentation/views/first_photo/view.dart';
import 'package:t_grow/presentation/views/helper_method.dart';
import 'package:t_grow/presentation/views/home2/view.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';
import 'package:t_grow/presentation/views/payment/view.dart';
import 'package:t_grow/presentation/views/profile/view.dart';
import 'package:t_grow/presentation/views/scan/view.dart';
import 'package:t_grow/presentation/views/scan1/view.dart';
import 'package:t_grow/presentation/views/sign_up/view.dart';
import 'package:t_grow/data/cubits/login/user__cubit.dart';
import 'package:t_grow/presentation/views/treatment/view.dart';
import 'package:t_grow/data/cubits/plant/upload_image_cubit.dart';
import 'data/core/helpers/cache_helper.dart';
import 'data/core/local/app_local.dart';
import 'data/cubits/history/history_cubit.dart';
import 'data/cubits/lang/lang_cubit.dart';
import 'data/cubits/register/register_cubit.dart';
import 'presentation/views/forth_photo/view.dart';
import 'presentation/views/first_screen/view.dart';
import 'presentation/views/forget_password/view.dart';
import 'presentation/views/login/view.dart';
import 'presentation/views/main/view.dart';
import 'presentation/views/new_password/view.dart';
import 'presentation/views/password_changed/view.dart';
import 'presentation/views/payment2/view.dart';
import 'presentation/views/start/view.dart';
import 'presentation/views/third_photo/view.dart';
import 'presentation/views/tracking1/view.dart';
import 'presentation/views/tracking2/view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper2.init();
  initServiceLoactor();
  await sl<CacheHelper>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => LangCubit()..getCachedLang(),

      child:ScreenUtilInit(



        designSize: const Size(390, 844),

        builder: (context, child) =>
           MultiBlocProvider(
             providers: [
               BlocProvider(create:  (BuildContext context) => RegisterCubit()),
               // BlocProvider(create:  (BuildContext context) => LangCubit()..getCachedLang()),

               BlocProvider(create:  (BuildContext context) => RecentlyCubit()..getRecently()),
               BlocProvider(create:  (BuildContext context) => HistoryCubit()..get()),
               BlocProvider(create:  (BuildContext context) =>UserCubit()),
               BlocProvider(create:  (BuildContext context) =>UploadImageCubit()),

             ],
              child: MaterialApp(
                navigatorKey: navigatorKey,
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  AppLocalizations.delegate
                ],
                supportedLocales: const [
                  Locale('ar', "EG"),
                  Locale('en', "US"),
                ],
                locale: const Locale('en'),
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home:const Start()
              ),
            ),
      ),
    );
  }
}
