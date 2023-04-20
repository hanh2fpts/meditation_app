import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/presentation/login/login.dart';
import 'package:meditation_app/presentation/topic/topic_page.dart';
import 'package:meditation_app/presentation/welcome/welcome.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        name: RouteName.welcomePage,
        path: '/',
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            name: RouteName.topicPage,
            path: 'topicPage',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionDuration: const Duration(milliseconds: 500),
                key: state.pageKey,
                child: const TopicPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
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
}
