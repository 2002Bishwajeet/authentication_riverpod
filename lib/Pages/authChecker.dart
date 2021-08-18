import 'package:authentication_riverpod/Pages/ErrorScreen.dart';
import 'package:authentication_riverpod/Pages/HomePage.dart';
import 'package:authentication_riverpod/Pages/LoadingScreen.dart';
import 'package:authentication_riverpod/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'LoginPage.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({Key? key}) : super(key: key);

  //  Notice here we aren't using stateless/statefull widget. Instead we are using
  //  a custom widget that is a consumer of the state.
  //  So if any data changes in the state, the widget will be updated.

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    //  now the build method takes a new paramaeter ScopeReader.
    //  this object will be used to access the provider.

    //  now the following variable contains an asyncValue so now we can use .when method
    //  to imply the condition
    final _authState = watch(authStateProvider);
    return _authState.when(
        data: (data) {
          if (data != null) return HomePage();
          return LoginPage();
        },
        loading: () => LoadingScreen(),
        error: (e, trace) => ErrorScreen(e, trace));
  }
}
