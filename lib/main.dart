// // import 'package:demo/feature/cart/bloc/cart_bloc.dart';
// // import 'package:flutter/material.dart';
// // import 'package:demo/feature/home/bloc/home_bloc.dart';
// // import 'package:demo/feature/home/ui/home.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // void main(){
// //   WidgetsFlutterBinding.ensureInitialized();
// //   runApp( const MyApp());
// // }
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return  MultiBlocProvider(
// //       providers: [
// //         BlocProvider<HomeBloc>(create: (_)=>HomeBloc()),
// //         BlocProvider<CartBloc>(create: (_)=>CartBloc())
// //       ],
// //       child: MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         theme: ThemeData(
// //             primaryColor: Colors.teal
// //         ),
// //         home: const Home(),
// //       ),
// //     );
// //   }
// // }
//
//
import 'package:demo/create_new_account_page.dart';
import 'package:demo/forgot_password_page.dart';
import 'package:demo/home_screen_page.dart';
import 'package:demo/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (_,child)
      {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: const Color(0xff102434)
          ),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  const LoginPage(),

    );
  }
}

// import 'package:demo/base_app.dart';
// import 'package:flutter/material.dart';
//
//
// void main() {
//   runApp(
//     const BaseApp(),
//   );
// }
// import 'package:demo/bottom_navigation.dart';
// import 'package:demo/home_screen_page.dart';
// import 'package:flutter/material.dart';
// void main()
// {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BottomNavigationDemo(),
//     );
//   }
// }
