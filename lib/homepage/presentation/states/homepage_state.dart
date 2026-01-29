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
    'Current Affairs': Colors.redAccent,
  };

  // List of posts for easier management (add more deets here if you want)
  final List<Map<String, dynamic>> posts = [
    
    // Sept, Oct, Nov., Dec
    {
      'category': 'Current Affairs',
      'title': 'Governments Begin Scrutinizing Peer-to-Peer Logistics Networks',
      'image': 'https://bulletin.goyerv.com/articles/nasser-eledroos-20fmGtxKs_I-unsplash.jpg',
      'teaser': 'Authorities examine these networks for compliance with labor laws, taxation, insurance, and data privacy, signaling that the era of lightly regulated, decentralized logistics is shifting toward oversight',
      'date': 'December 22, 2025',
      'readTime': '2 min read',
      'route': '/articles/current-affairs/governments-begin-scrutinizing-logistics-networks',
    },

    {
      'category': 'Current Affairs',
      'title': 'Schengen’s New Entry System: What Changed for Non-EU Travelers Late This Year',
      'image': 'https://bulletin.goyerv.com/articles/dennis-rochel-FpNlPdPn2Ws-unsplash.jpg',
      'teaser': 'The broader trend reflects Europe’s intent to combine security with efficiency. By shifting from reactive manual checks to pre-emptive digital verification, authorities aim to streamline flows while minimizing risk.',
      'date': 'November 8, 2025',
      'readTime': '2 min read',
      'route': '/articles/current-affairs/schengen-new-entry-system',
    },

    {
      'category': 'Current Affairs',
      'title': 'TSA’s 2025 Enforcement Changes: What Travelers Are Being Stopped for Now',
      'image': 'https://bulletin.goyerv.com/articles/patty-zavala-TKwGZ9a6YHU-unsplash.jpg',
      'teaser': 'TSA expands the use of automated screening lanes and advanced imaging systems, reducing reliance on individual officer discretion.',
      'date': 'October 28, 2025',
      'readTime': '2 min read',
      'route': '/articles/current-affairs/tsa-enforcement-changes',
    },

    {
      'category': 'Economic Impact & Access',
      'title': 'Side Hustle to Main Hustle: How Goyerv Is Unlocking Micro-Incomes',
      'image': 'https://bulletin.goyerv.com/articles/thrift-shopping.jpg',
      'teaser': 'Micro-businesses and local retailers gain access to affordable logistics without committing to permanent delivery staff.',
      'date': 'October 20, 2025',
      'readTime': '4 min read',
      'route': '/articles/economic-impact-and-access/side-hustle-to-main-hustle',
    },

    {
      'category': 'Current Affairs',
      'title': 'How Europe’s Platform Work Directive Redefined Gig Work in 2025',
      'image': 'https://bulletin.goyerv.com/articles/christian-lue-8Yw6tsB8tnc-unsplash.jpg',
      'teaser': 'In the second half of last year, the European Union advanced the Platform Work Directive, marking a decisive shift in how gig work is regulated across member states.',
      'date': 'September 1, 2025',
      'readTime': '4 min read',
      'route': '/articles/current-affairs/europe-platform-work-directive',
    },



    // ################################
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
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 30.0,
                  // alignment: WrapAlignment.start,
                  children: posts.map((post) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => context.go(post['route']),
                        child: Card(
                          elevation: 2, 
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: w(context),
                              maxHeight: MediaQuery.of(context).size.width >= 800
                                  ? MediaQuery.of(context).size.height * 0.78
                                  : MediaQuery.of(context).size.width * 0.88,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            
                                if (post['image'] != null)
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)), 
                                    child: Image.network(
                                      post['image'],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: MediaQuery.of(context).size.width > 800 ? MediaQuery.of(context).size.width * 0.25 : MediaQuery.of(context).size.width * 0.45
                                    ),
                                  ),
                            
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
                            
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
                                  child: Text(
                                    post['teaser'],
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                            
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



  double w(BuildContext context) {

    if(MediaQuery.of(context).size.width <= 500) {
      return MediaQuery.of(context).size.width;
    
    } else 
    if(MediaQuery.of(context).size.width <= 800 && MediaQuery.of(context).size.width > 500) {
      return MediaQuery.of(context).size.width;
    
    } else 
    if (MediaQuery.of(context).size.width <= 900 && MediaQuery.of(context).size.width > 800) {
      return MediaQuery.of(context).size.width * 0.4;
    
    } else 
    if(MediaQuery.of(context).size.width <= 1200 && MediaQuery.of(context).size.width > 900) {
      return MediaQuery.of(context).size.width * 0.43;
    
    } else 
    if(MediaQuery.of(context).size.width > 1200) {
      return MediaQuery.of(context).size.width * 0.29;
    
    } return MediaQuery.of(context).size.width * 0.24;
  }



}