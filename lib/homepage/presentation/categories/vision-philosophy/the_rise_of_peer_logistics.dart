// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class TheRiseOfPeerLogistics extends StatefulWidget {
  
  const TheRiseOfPeerLogistics({Key? key}) : super(key: key);

  @override
  State<TheRiseOfPeerLogistics> createState() => _TheRiseOfPeerLogisticsState();

}



class _TheRiseOfPeerLogisticsState extends State<TheRiseOfPeerLogistics> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Bulletin - From Uber to Airbnb to Goyerv: The Rise of Peer-Logistics",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            flex: 8,
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("From Uber to Airbnb to Goyerv: The Rise of Peer-Logistics", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: const [
                          
                          TextSpan(
                            text: "Category: ",
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),

                        
                          TextSpan(
                            text: "Vision & Philosophy",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/vision-and-philosophy/the-rise-of-peer-logistics.html"),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                          decoration: BoxDecoration(
                            color: transparent,
                            border: Border.all(color: blue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                    
                              const Icon(Icons.share_rounded, color: blue, size: 20),

                              const SizedBox(width: 3),
                                    
                                    
                              Text("Share", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                           
                            ],
                          ),
                        ),
                      ),
                    ),

                    sbhmin,

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(9)), 
                        child: Image.network(
                          'https://bulletin.goyerv.com/articles/Camara-360.jpg',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.60, 
                        ),
                      ),
                    ),

                    sbhmin,

                    const Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            'May 12, 2025 • 4 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''The world used to run on big institutions and bigger infrastructure. You hailed a taxi from a company, booked a hotel owned by a chain, shipped a package through a massive logistics firm. But then came the peer-to-peer wave—Uber turned anyone with a car into a driver, Airbnb transformed spare rooms into boutique experiences, and now, Goyerv is reimagining delivery by letting everyday people carry goods where they’re already going.\n\nThis isn’t just a new business model. It’s a mindset shift. It’s the democratization of logistics.\n\nWelcome to the rise of peer-logistics.\n\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The First Wave: Peer-to-Peer Transportation\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
      

                    Text(
                      '''Uber changed the game in 2009. Suddenly, you didn’t need a dispatcher, a taxi license, or even a fleet. If you had a phone and a car, you could start earning. Cities where cabs were scarce now had ride options in minutes. Riders got convenience; drivers got autonomy.\n\nBut this shift wasn’t just about moving people—it was about moving power. The gatekeepers were gone. The crowd was in control.\n\nAirbnb soon did the same for travel. A guesthouse in Ghana, a loft in Brooklyn, a treehouse in Bali—any space could become a stay. It disrupted hospitality with warmth, personalization, and a hint of adventure. No longer did travelers need to rely on corporations to host them. Now they were hosted by neighbors.\n\nUber moved people. Airbnb housed them. But the middle piece—how things move—was still stuck in the past.\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The Missing Link: Logistics for the People\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''While ride-sharing and home-sharing took off, delivery stayed rigid. Packages bounced between warehouses, couriers followed fixed routes, and rural areas waited days for simple goods. The system worked, but only just—and only for some.\n\nEnter Goyerv.\n\nGoyerv didn’t invent logistics. It reinvented who gets to participate.\n\nAt its core, Goyerv connects people who are already going somewhere with those who need something delivered from that place. It turns a daily commute into a delivery route. A cross-country flight into a global shipment. A grocery run into a micro-fulfillment.\n\nAnd because the system doesn’t rely on warehouses, vans, or corporate infrastructure, it’s lean, fast, and accessible—especially for places and people overlooked by traditional carriers.\n\nThat’s the magic of peer-logistics.\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("Why Now? Timing, Tech, and Trust\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''So why is peer-logistics rising now? The stars have aligned.\n\nFirst, technology: GPS, smartphones, real-time verification, and secure digital payments have made it seamless to match needs with availability.\n\nSecond, the gig mindset: More people are seeking flexible, self-determined work. They want to own their time, pick their pace, and monetize their movements.\n\nThird, environmental awareness: Traditional shipping is carbon-heavy. Goyerv is inherently greener—riders are already en route. No extra emissions. No empty vans. Just efficient use of what’s already moving.\n\nAnd finally, community-driven trust. Goyerv users rate each other, build relationships, and share accountability. When the platform is powered by people, the people protect it.\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("Why It Matters: Equity, Efficiency, and Empowerment\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''Peer-logistics isn’t just a trend—it’s a correction.\n\nIt levels the playing field. People without degrees, without cars, without traditional jobs can still participate. A single parent, a traveler, a retiree—all can become micro-entrepreneurs.\n\nIt eliminates waste. No more trucks rerouting for single deliveries. No more extra packaging or hub-and-spoke delays. Just smart, sustainable movement.\n\nAnd most importantly, it decentralizes opportunity. No matter where you live, if people are moving near you, there’s value to be shared. You don’t need a storefront, a fleet, or a brand. Just presence and purpose.\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("What’s Next for Peer-Logistics?\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''As platforms like Goyerv scale, expect a deeper integration into daily life.\n\nRetailers might start using Goyerv not just for last-mile delivery, but for same-day restocking between stores. Airlines might collaborate for in-flight micro-shipments. Travelers could become part of international trade flows.\n\nAnd beyond the commerce, Goyerv could become a tool for crisis response—getting essentials into disaster zones, medications into remote clinics, or even school supplies to underserved classrooms.\n\nBecause when logistics lives in the hands of the people, it can go places no company ever could.\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text(
                      '''Uber gave us the ride. Airbnb gave us the room. Goyerv gives us the route.\n\nThis is not just about shipping. It’s about shifting—power, access, efficiency, and dignity.\n\nIn the age of peer-logistics, movement is no longer a cost. It’s currency.\n\nAnd Goyerv? We’re not just the next stop. We’re the future in motion.\n\n''',
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