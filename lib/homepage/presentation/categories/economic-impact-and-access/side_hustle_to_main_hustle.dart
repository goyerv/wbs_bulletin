// Copyright (c) 2025 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class SideHustleToMainHustle extends StatefulWidget {
  
  const SideHustleToMainHustle({Key? key}) : super(key: key);

  @override
  State<SideHustleToMainHustle> createState() => _SideHustleToMainHustleState();

}



class _SideHustleToMainHustleState extends State<SideHustleToMainHustle> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Side Hustle to Main Hustle: How Goyerv Is Unlocking Micro-Incomes",
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

                    Text("Side Hustle to Main Hustle: How Goyerv Is Unlocking Micro-Incomes", style: Theme.of(context).textTheme.headlineLarge),

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
                            text: "Economic Impact & Access",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/economic-impact-and-access/side-hustle-to-main-hustle.html"),
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
                          'https://bulletin.goyerv.com/articles/thrift-shopping.jpg',
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
                            'October 20, 2025 • 4 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''Entering the latter half of this year, Goyerv continues transforming the way people earn, turning what once exists as a side hustle into a viable, flexible main source of income. Independent movers, students, part-time workers, and small-business owners leverage the platform to monetize trips, unused cargo space, and local delivery capacity. What begins as casual, occasional work now generates predictable earnings, allowing users to cover bills, invest in small ventures, or supplement unstable income streams.\n\nGoyerv’s model taps into existing movement, matching people who are already traveling with individuals or businesses that need items delivered. Instead of relying on fleets or warehouses, the platform empowers individuals to convert spare time and resources into revenue. In Lagos, a student delivering parcels between districts consistently earns enough to cover tuition costs. In New York, a part-time runner transporting small packages supplements their main job, turning weekend drives into meaningful income. Across continents, the principle is the same: small, everyday trips become income-generating opportunities, with minimal overhead and maximum flexibility.\n\nThe economic impact extends beyond individual earners. Micro-businesses and local retailers gain access to affordable logistics without committing to permanent delivery staff. Artisans in remote towns ship handmade goods directly to urban markets, while restaurants and shops optimize inventory movement across districts. By connecting supply and demand in real time, Goyerv helps micro-enterprises survive and even grow, bridging gaps that traditional logistics often leave unaddressed.\n\nFor users, the platform also introduces structure and predictability. Earnings histories, in-app performance tracking, and optional scheduling tools allow runners to treat micro-gigs as legitimate, trackable work. Platforms that operate purely as casual marketplaces often leave users guessing about income or opportunities, but Goyerv formalizes what was informal. Individuals learn to plan routes, estimate time, and maximize efficiency, effectively turning a side hustle into a main hustle without sacrificing flexibility.\n\nThe broader implication is clear: Goyerv is more than a delivery platform. It is an enabler of economic mobility, allowing anyone with movement and time to access financial opportunities previously locked behind capital, infrastructure, or networks. Across continents, the principle holds—small efforts aggregate into meaningful income, and everyday travel becomes an engine for economic participation. In a world where traditional employment is often unstable, Goyerv demonstrates that micro-incomes are not marginal—they are essential pathways to independence and resilience.\n\n''',
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