// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class WeAreAMovement extends StatefulWidget {
  
  const WeAreAMovement({Key? key}) : super(key: key);

  @override
  State<WeAreAMovement> createState() => _WeAreAMovementState();

}



class _WeAreAMovementState extends State<WeAreAMovement> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      body: Title(
        title: "Goyerv - We’re Not a Delivery App—We’re a Movement",
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

                    Text("We’re Not a Delivery App—We’re a Movement", style: Theme.of(context).textTheme.headlineLarge),

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


                    GestureDetector(
                      onTap: () => Share.share("https://bulletin.goyerv.com/2025/vision-and-philosophy/we-are-a-movement.html"),
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
                      The word “delivery” feels too small for what we do. It brings to mind cardboard boxes stacked in vans, barcodes and conveyor belts, the cold efficiency of commerce. But Goyerv isn’t a box mover. We’re a pulse. A ripple. A movement of people helping people, powered by proximity, purpose, and everyday motion.\n\nWe didn’t build this platform to compete with the giants of logistics—we built it because the world needed something radically different. Something more human, more local, and more alive.\n\nWe’re not a delivery app. We’re a people-powered revolution in motion.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The Spirit of Goyerv\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
      

                    Text(
                      '''
                      At the heart of Goyerv is a simple idea: real people, already on the move, can do more than just arrive—they can deliver hope, opportunity, and connection. It’s the traveler with space in their backpack. The shopper on their lunch break. The commuter heading home. Instead of building massive infrastructure, we tap into what already exists: human journeys.\n\nEvery Goyerv Runner is a thread in a living network. Every drop-off is more than a transaction—it’s a gesture. An act of trust. A mini act of community building. Because we believe in logistics that feel like neighbors lending hands, not algorithms directing drones.\n\nThis isn’t just about getting things from A to B. It’s about rewriting the alphabet of commerce, so it includes empathy, agency, and dignity.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("Beyond the Algorithm\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Most delivery apps rely on optimization. Routes, load sizes, surge pricing—it’s all math. But Goyerv is built on rhythm. The rhythm of cities waking up, of markets bustling, of people going where they already need to go.\n\nWe don’t command fleets. We invite participation. That’s why Runners choose when and where to post. They set their boundaries. They accept requests that fit their vibe and their route. There’s freedom in the flow, and that freedom is powerful.\n\nWe’re not in the business of squeezing more drops out of workers. We’re in the business of elevating every errand, every walk, every ride into an opportunity to earn, connect, and uplift.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("Why Movement Matters\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Because traditional systems aren’t built for everyone. They leave gaps—rural towns without same-day service, small businesses without reliable couriers, individuals without access to affordable delivery. They treat logistics as a luxury, not a lifeline.\n\nGoyerv was created to move differently. We move with people, not against the grain. We don’t send trucks into neighborhoods—we reveal the neighbors who are already there, already in motion, already capable of making a difference.\n\nIn doing so, we blur the lines between buyer and courier, between stranger and neighbor. And we create a new kind of movement. One where proximity becomes power.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("The Human Factor\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      There’s something beautiful about asking a person—not a platform—to bring you something. It builds trust. It demands empathy. It allows for conversations, not just confirmations. And it makes space for reputation, for kindness, for community.\n\nGoyerv leans into this. Every user can see who they’re interacting with. Every Runner builds a story, a reputation, a rhythm. And because posts disappear after a set time, it stays fresh, voluntary, and organic. Nobody is tracked. Everyone is respected.\n\nIt’s people-first logistics. And that’s rare.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("It’s a Social Economy\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      We often talk about the platform economy as if it’s purely digital. But Goyerv is social at its core. It lives in the markets, in the street corners, in WhatsApp chats and store queues. It lives where people already are—and where they already want to go.\n\nThis movement gives rise to micro-entrepreneurs. A student becomes a neighborhood courier. A retiree finds new purpose in their daily walk. A tourist earns back their flight through strategic drops. These aren’t gig workers. They’re community builders with side hustles that matter.\n\nAnd the impact ripples. Small retailers gain new customers. Isolated communities gain new access. And the planet gets a break, because every Goyerv delivery means one less unnecessary trip.
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("Movement > Metrics\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Sure, we track success. We know the data. But metrics alone can’t capture what we’re building.\n\nHow do you measure a grandmother in Nairobi getting fresh spices from her hometown because a fellow Kenyan passed through the airport at just the right time?\n\nHow do you quantify the joy of a surprise birthday gift hand-delivered across cities—not by a courier, but by a cousin of a friend who happened to be traveling?\n\nThese aren’t metrics. They’re moments. And they matter more than margins.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("A Global Yet Local Pulse\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Goyerv is global, but grounded. Whether you’re in Lagos, Los Angeles, or Lisbon, the core idea remains the same: trust people in motion.\n\nIt works in megacities with endless movement. It works in small towns where community is everything. And it works in the spaces in between, where traditional systems forget, but Goyerv remembers.\n\nWe don’t build warehouses. We build bridges. Invisible ones. Human ones. The kind that connect not just places, but lives.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("The Road Ahead\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      We’re just getting started. As more people join the movement, new layers will unfold. Subscription models for favorite Runners. Loyalty perks for reliable deliveries. Community events to connect users offline.\n\nWe envision a world where Goyerv helps during crises, fills in supply chain gaps, empowers marginalized workers, and expands what it means to participate in the economy.\n\nWe believe logistics doesn’t have to be loud to be powerful. It doesn’t need a fleet to have reach. It just needs people—and purpose.\n\n\n
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