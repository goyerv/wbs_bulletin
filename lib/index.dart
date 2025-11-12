// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'homepage/presentation/categories/behind-the-scenes/why_goyerv_dose_not_use_warehouses.dart';
import 'homepage/presentation/categories/economic-impact-and-access/helping_underserved_communities.dart' show HelpingUnderServedCommunities;
import 'homepage/presentation/categories/sustainability-and-innovation/goyerv_is_green.dart';
import 'homepage/presentation/categories/vision-philosophy/the_rise_of_peer_logistics.dart';
import 'homepage/presentation/categories/vision-philosophy/we_are_a_movement.dart';
import 'homepage/presentation/states/homepage_state.dart';
import 'web_core/themes/dark/theme_dark.dart';
import 'web_core/themes/light/theme_light.dart';



class GoyervBulletin extends StatefulWidget {

  const GoyervBulletin({Key? key}) : super(key: key);

  @override
  State<GoyervBulletin> createState() => _GoyervBulletinState();

}

class _GoyervBulletinState extends State<GoyervBulletin> {


  @override
  Widget build(BuildContext context) {
    
      final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
    
        GoRoute(
          path: '/',
          builder: (context, state) => const Homepage()
        ),
  
        GoRoute(
          path: '/articles/behind-the-scenes/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "why-goyerv-does-not-use-warehouses") {
              return const WhyGoyervDoesNotUseWarehouses();
            }

            return const Homepage();
          }
        ),
      
  
        GoRoute(
          path: '/articles/economic-impact-and-access/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "helping-underserved-communities") {
              return const HelpingUnderServedCommunities();
            }

            return const Homepage();
          }
        ),
    
      
        GoRoute(
          path: '/articles/sustainability-and-innovation/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "goyerv-is-green") {
              return const GoyervIsGreen();
            }

            return const Homepage();
          }
        ),
              
        GoRoute(
          path: '/articles/vision-and-philosophy/:path',
          builder: (context, state) {
            final path = state.pathParameters['path'];
        
            switch (path) {
              case "the-rise-of-peer-logistics":
                return const TheRiseOfPeerLogistics();
              case "we-are-a-movement":
                return const WeAreAMovement();
              default:
                return const Homepage();
            }
          },
        ),
      
    
      ]
    );

    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }

}
