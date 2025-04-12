// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class GoyervIsGreen extends StatefulWidget {
  
  const GoyervIsGreen({Key? key}) : super(key: key);

  @override
  State<GoyervIsGreen> createState() => _GoyervIsGreenState();

}



class _GoyervIsGreenState extends State<GoyervIsGreen> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      body: Title(
        title: "Goyerv Bulletin - Goyerv is Green",
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

                    Text("Why Goyerv Is the Most Eco-Friendly Shipping Option on Earth", style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: const [
                          
                          TextSpan(
                            text: "Category: ",
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: "Sustainability & Innovation",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://bulletin.goyerv.com/2025/sustainability-and-innovation/goyerv-is-green.html"),
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
                      In a world spiraling toward climate urgency, where speed often trumps sensibility, the logistics industry stands as both a marvel and a menace. It connects us—but at what cost? Traditional carriers are built on complex systems of trucks, warehouses, and air freight. They deliver convenience, yes, but they also deliver carbon. At Goyerv, we believe there's a better way—one that’s not just smart, but sustainable.\n\nGoyerv is rewriting the rules of delivery. Not by building faster engines or bigger warehouses—but by thinking smaller, more local, and more human. We harness the power of peer-to-peer connections, leveraging the natural flow of people already in motion. The result? A logistics platform that’s lighter on the planet and heavier on impact.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("Replacing Exhaust with Intent: The Goyerv Model\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
      

                    Text(
                      '''
                      Every major shipping carrier operates like a machine: pick-up, warehouse, sort, ship, deliver. That model requires a vast infrastructure—distribution centers consuming megawatts, fleets of gas-powered trucks racking up miles, and aircraft pumping CO2 at 35,000 feet.\n\nGoyerv cuts out the excess. Our model is simple yet powerful: connect people who are already going somewhere with others who need something delivered. A college student heading home can carry a care package. A business traveler flying to Accra can deliver a box of artisanal products. A neighbor running errands can pick up meds for someone across town. These aren’t detours—they’re shared paths.\n\nOur approach minimizes the need for additional transportation, turning everyday movement into meaningful delivery. It’s like carpooling for packages—except smarter, and at scale.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    Text("How We Slash Carbon Emissions\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Let’s talk impact. The average package delivered by a traditional carrier emits about 1.7kg of CO2 per 10 miles. Now multiply that by millions of packages moving daily across cities and countries. The numbers stack up—and not in our planet’s favor.\n\nGoyerv deliveries typically involve zero added mileage. Instead of a delivery van circling the block ten times to find parking, your package hitches a ride with someone already on foot, on a bike, or en route via public transport. Every delivery avoids emissions that would otherwise be burned in a combustion engine.\n\nIf just 1% of traditional deliveries were rerouted through peer-to-peer platforms like Goyerv, we could save thousands of tons of carbon annually. Now imagine scaling that.\n\n\n
                      ''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    Text("Local First, Global Conscious\n\n", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),


                    Text(
                      '''
                      Unlike centralized carriers, Goyerv thrives on decentralization. Our logistics are powered by real people in real time. There are no massive distribution hubs gobbling up land and power. There’s no cold storage. There’s just you, a runner, and a shared mission.\n\nAnd while we enable long-distance requests—say, LA to London—we still reduce emissions by matching you with someone already flying that route. We don’t book a new trip; we optimize one that’s already happening.\n\nThis ethos also fosters hyperlocal fulfillment. You can request something from a local store or market and get it delivered by someone already nearby. That means less packaging, less transportation, and less delay. It’s better for the earth and better for you.\n\n\n
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