import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/presentation/login/login.dart';
import 'package:meditation_app/presentation/login/sign_in.dart';
import 'package:meditation_app/presentation/login/sign_up.dart';
import 'package:meditation_app/presentation/topic/topic_page.dart';
import 'package:meditation_app/presentation/welcome/welcome.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        name: RouteName.logIn,
        path: '/',
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            name: RouteName.welcomePage,
            path: 'welcomePage',
            pageBuilder: (context, state) {
              return customTransitionPage(page: const WelcomePage(), state: state);
            },
          ),
          GoRoute(
            name: RouteName.topicPage,
            path: 'topicPage',
            pageBuilder: (context, state) {
              return customTransitionPage(page: const TopicPage(), state: state);
            },
          ),
          GoRoute(
            name: RouteName.signUp,
            path: 'signUp',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionDuration: const Duration(milliseconds: 500),
                reverseTransitionDuration: const Duration(microseconds: 300),
                key: state.pageKey,
                child: const SignUpPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                        .animate(animation),

                    //Tween(curve: Curves.bounceIn).animate(animation),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: RouteName.signIn,
            path: 'signIn',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionDuration: const Duration(milliseconds: 500),
                key: state.pageKey,
                child: const SignInPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                        .animate(animation),

                    //Tween(curve: Curves.bounceIn).animate(animation),
                    child: child,
                  );
                },
              );
            },
          ),
        ]),
  ],
);

class RouteName {
  static const String welcomePage = 'welcomePage';
  static const String topicPage = 'topicPage';
  static const String signUp = 'signUp';
  static const String signIn = 'signIn';
  static const String logIn = 'logIn';
}

Page customTransitionPage({required Widget page, required GoRouterState state}) {
  return CustomTransitionPage(
    transitionDuration: const Duration(milliseconds: 500),
    key: state.pageKey,
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
        child: child,
      );
    },
  );
}
