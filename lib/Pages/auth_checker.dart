import 'package:authentication_riverpod/Pages/home_page.dart';
import 'package:authentication_riverpod/pages/loading_screen.dart';
import 'package:authentication_riverpod/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';

///   This is [AuthChecker] widget which is used to check if the user is logged in or not
///  since it depends on [State] we do not need to use navigator to route to widgets
///  it will automatically change according to the [State].
class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  ///  So here's the thing what we have done
  ///  if the [_isLoggedIn] is true, we will go to [HomePage]
  ///  if false we will go to [WelcomePage]
  /// and if the user is null we will show a [LoadingPage]
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(userLoggedInProvider);
    if (isLoggedIn == true) {
      return const HomePage(); // It's a simple basic screen showing the home page
    } else if (isLoggedIn == false) {
      return const LoginPage(); // It's the intro screen we made
    }
    return const LoadingScreen(); // It's a plain screen with a circular progress indicator in Center
  }
}
