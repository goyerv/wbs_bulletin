// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:go_router/go_router.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../widget/presentation/states/widget.dart';




class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  // Define category colors for that pill pop
  final Map<String, Color> categoryColors = {
    'Sustainability & Innovation': Colors.green,
    'Behind the Scenes': Colors.blue, // Fixed capitalization for consistency
    'Economic Impact & Access': Colors.purple,
    'Vision & Philosophy': Colors.orange,
  };

  // List of posts for easier management (add more deets here if you want)
  final List<Map<String, dynamic>> posts = [
    {
      'category': 'Sustainability & Innovation',
      'title': 'Goyerv is Green',
      'image': 'https://bulletin.goyerv.com/articles/goyerv-green-logo.png',
      'teaser': 'Discover how Goyerv is leading the charge in eco-friendly logistics and sustainability.',
      'date': 'August 15, 2025',
      'readTime': '4 min read',
      'route': '/articles/sustainability-and-innovation/goyerv-is-green',
    },
    {
      'category': 'Behind the Scenes',
      'title': 'Why Goyerv Doesn’t Use Warehouses',
      'image': 'https://bulletin.goyerv.com/articles/adrian-sulyok-sczNLg6rrhQ-unsplash.jpg',
      'teaser': 'Peek behind the curtain at our innovative peer-to-peer model that skips the storage drama.',
      'date': 'July 14, 2025',
      'readTime': '2 min read',
      'route': '/articles/behind-the-scenes/why-goyerv-does-not-use-warehouses',
    },
    {
      'category': 'Economic Impact & Access',
      'title': 'Goyerv as a Lifeline: Helping Underserved Communities Trade and Thrive',
      'image': 'https://bulletin.goyerv.com/articles/1744207951194.jpg',
      'teaser': 'See how we\'re empowering communities with accessible trading and economic boosts.',
      'date': 'May 26, 2025',
      'readTime': '2 min read',
      'route': '/articles/economic-impact-and-access/helping-underserved-communities',
    },
    {
      'category': 'Vision & Philosophy',
      'title': 'From Uber to Airbnb to Goyerv: The Rise of Peer-Logistics',
      'image': 'https://bulletin.goyerv.com/articles/Camara-360.jpg',
      'teaser': 'Explore the evolution of sharing economies and how Goyerv fits into the big picture.',
      'date': 'May 12, 2025',
      'readTime': '4 min read',
      'route': '/articles/vision-and-philosophy/the-rise-of-peer-logistics',
    },
    {
      'category': 'Vision & Philosophy',
      'title': 'We’re Not a Delivery App—We’re a Movement',
      'image': 'https://bulletin.goyerv.com/articles/Download-Business-idea-transfer-transportation-for-free.jpg',
      'teaser': 'Join the revolution: Goyerv is redefining logistics as a community-driven force.',
      'date': 'April 11, 2025',
      'readTime': '3 min read',
      'route': '/articles/vision-and-philosophy/we-are-a-movement',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 1200 ? 3 : screenWidth > 800 ? 2 : 1;
    double padding = screenWidth >= 800 ? 50.0 : 16.0;
    const gridSpacing = 30.0;
    
    // estimate a comfy card height per breakpoint
    final cardHeight = screenWidth > 1200
        ? 360.0
        : screenWidth > 800
            ? 340.0
            : 300.0;
    
    // compute card width and aspect ratio (width / height)
    final gridWidth = screenWidth - (padding * 2);
    final cardWidth =
        (gridWidth - (gridSpacing * (crossAxisCount - 1))) / crossAxisCount;
    final childAspectRatio = cardWidth / cardHeight;


    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv - Bulletin",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            flex: 8,
            children: [

              sbhmax, sbhmax,
              
              Padding(
                padding: EdgeInsets.all(padding),
                child: GridView.count(
                  shrinkWrap: true, // To fit inside the column
                  physics: const NeverScrollableScrollPhysics(), // No scroll, let parent handle
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: gridSpacing,
                  mainAxisSpacing: gridSpacing,
                  childAspectRatio: childAspectRatio,
                  children: posts.map((post) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => context.go(post['route']),
                        child: Card(
                          elevation: 2, // Slight glow-up shadow
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(12.0), // Softer corners
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Image, cropped to fit
                              if (post['image'] != null)
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)), // Blend with card
                                  child: Image.network(
                                    post['image'],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: screenWidth > 800 ? screenWidth * 0.15 : screenWidth * 0.75, // Adjusted for better proportion
                                  ),
                                ),


                              // Category pill
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                                child: Chip(
                                  label: Text(
                                    post['category'],
                                    style: const TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                  backgroundColor: categoryColors[post['category']] ?? Colors.grey,
                                  shape: const StadiumBorder(),
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                ),
                              ),
                              
                                                              
                              // Title
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 4.0),
                                child: Text(
                                  post['title'],
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // Teaser
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
                                child: Text(
                                  post['teaser'],
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              // Date and read time with calendar icon
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey),
                                    
                                    const SizedBox(width: 4),
                                    Text(
                                      '${post['date']} • ${post['readTime']}',
                                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}