// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class HelpingUnderServedCommunities extends StatefulWidget {
  
  const HelpingUnderServedCommunities({Key? key}) : super(key: key);

  @override
  State<HelpingUnderServedCommunities> createState() => _HelpingUnderServedCommunitiesState();

}



class _HelpingUnderServedCommunitiesState extends State<HelpingUnderServedCommunities> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      body: Title(
        title: "Goyerv Bulletin - Goyerv as a Lifeline: Helping Underserved Communities Trade and Thrive",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  children: [

                    Text("Goyerv as a Lifeline: Helping Underserved Communities Trade and Thrive", style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: const [
                          
                          TextSpan(
                            text: "Category: ",
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),

                          
                          TextSpan(
                            text: "Economic Impact & Access",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://bulletin.goyerv.com/2025/economic-impact-and-access/helping-underserved-communities.html"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                        decoration: BoxDecoration(
                          color: transparent,
                          border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          children: [
                                  
                            const Icon(Icons.share_rounded, color: grey),
                                  
                            sbwmin,
                                  
                            Text("Share", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                         
                          ],
                        ),
                      ),
                    ),



                    sbhavg,



                    Text(
                      '''
                      In the margins of global commerce, there are neighborhoods, towns, and entire communities often left behind—not because they lack value, skill, or ambition, but because traditional systems don’t see them. They don’t make the spreadsheets. They don’t get the infrastructure. They don’t get the spotlight.\n\nBut they exist. And they matter.\n\nAnd at Goyerv, we see them.\n\nWe see the seamstress in a rural town who hand-makes dresses but can’t find a way to ship her pieces to the city. We see the young man fixing phones from his garage who just needs a way to deliver parts. We see the aunties selling spices, the students flipping vintage clothes, the hustlers running side gigs after hours.\n\nWe don’t just see them—we built Goyerv for them.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The Problem: Access Is Unequally Distributed\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
      

                    Text(
                      '''
                      Let’s talk about reality. In many parts of the world, shipping infrastructure is not just lacking—it’s stacked against the small player. Setting up a delivery option can be costly, slow, and complex. Big logistics companies prioritize volume and scale. If you’re a massive warehouse shipping thousands of units a day, you get their attention. If you’re a solo entrepreneur trying to send five orders a week? You’re invisible.\n\nRural communities, urban informal settlements, and borderland regions all face similar struggles. What this means is simple but devastating: opportunity is gated. You can make the product, but you can’t reach your customer. You can buy the goods, but you can’t get them in time. You have the hustle, but not the bridge.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The Goyerv Difference: Peer-Powered, People-Centered\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Goyerv flips that broken script. We’re not built on massive warehouses, complicated routes, or rigid hierarchies. We’re built on people—on movement, trust, and shared purpose.\n\nOur platform connects people who are already in motion—runners—with those who need something delivered. Whether someone’s traveling by bus to the city, walking to the next town, or flying internationally, their route becomes an opportunity to deliver value.\n\nAnd here’s the beauty of it: because our system is flexible, location-agnostic, and powered by users, underserved communities finally get access to fast, affordable, and human delivery.\n\nEveryone wins—and the system breathes life into places often ignored.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("Local Economies, Global Reach\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Goyerv doesn’t stop at local impact. By unlocking these grassroots flows, we connect remote vendors to global markets. An artisan in Nairobi can sell to someone in Paris. A thrift dealer in Makurdi can reach buyers in Lagos and Accra. A spice seller in Tunis can get their goods to Dubai.\n\nWe’ve built a system that scales inward as much as it scales outward. And that makes us different. Traditional shipping expands by growing central hubs. Goyerv expands by empowering people. The more people use it, the stronger the network becomes.\n\nThink of it like a neural network—not one big brain calling the shots, but thousands of nodes lighting up together.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("A Platform With Purpose\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Goyerv is more than a logistics platform. It’s a philosophy, a rebellion against the idea that only the biggest players deserve reach. We believe trade is a human right, not a corporate luxury. And we believe delivery should empower, not exploit.\n\nIn underserved communities, this mission hits deepest. We don’t bring in solutions from the outside. We amplify what’s already there. The talent. The movement. The hustle. The trust.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                  ],
                )
              )


            ]
          ),
        ),
      ),
    );
  }


}