// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor






import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'homepage/presentation/categories/behind the scenes/why_goyerv_dose_not_use_warehouses.dart';
import 'homepage/presentation/categories/economic impact & access/helping_underserved_communities.dart';
import 'homepage/presentation/categories/sustainability & innovation/goyerv_is_green.dart';
import 'homepage/presentation/categories/vision & philosophy/the_rise_of_peer_logistics.dart';
import 'homepage/presentation/categories/vision & philosophy/we_are_a_movement.dart';
import 'homepage/presentation/states/homepage_state.dart';
import 'web_core/themes/dark/theme_dark.dart';
import 'web_core/themes/light/theme_light.dart';



class GoyervNews extends StatefulWidget {

  const GoyervNews({Key? key}) : super(key: key);

  @override
  State<GoyervNews> createState() => _GoyervNewsState();

}

class _GoyervNewsState extends State<GoyervNews> {

  late final GoRouter router;
  late GlobalKey<NavigatorState> navigatorKey;


  @override 
  void initState() {
    navigatorKey = GlobalKey<NavigatorState>();
    initializeRouter();
    super.initState();
  }




  void initializeRouter() {
    router = GoRouter(
      initialLocation: '/',
      navigatorKey: navigatorKey,
      redirect: (context, state) {
        final path = state.uri.path;

        if (path.endsWith('.html')) {
          final newPath = path.replaceAll('.html', '');
          return newPath;
        }

        return null;
      },
      routes: [
    
        GoRoute(
          path: '/',
          builder: (context, state) => const Homepage()
        ),
  
        // Push Notifications
        GoRoute(
          path: '/2025/behind-the-scenes/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "why-goyerv-does-not-use-warehouses") {
              return const WhyGoyervDoesNotUseWarehouses();
            }

            return const Homepage();
          }
        ),
      
  
        GoRoute(
          path: '/2025/economic-impact-and-access/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "helping-underserved-communities") {
              return const HelpingUnderServedCommunities();
            }

            return const Homepage();
          }
        ),
    
      
        GoRoute(
          path: '/2025/sustainability-and-innovation/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "goyerv-is-green") {
              return const GoyervIsGreen();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '2025/vision-and-philosophy/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "the-rise-of-peer-logistics") {
              return const TheRiseOfPeerLogistics();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/vision-and-philosophy/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "we-are-a-movement") {
              return const WeAreAMovement();
            }

            return const Homepage();
          }
        ),
      
    
      ]
    );
  
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Goyerv',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }

}
