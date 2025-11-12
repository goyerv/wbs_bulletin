// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class WhyGoyervDoesNotUseWarehouses extends StatefulWidget {
  
  const WhyGoyervDoesNotUseWarehouses({Key? key}) : super(key: key);

  @override
  State<WhyGoyervDoesNotUseWarehouses> createState() => _WhyGoyervDoesNotUseWarehousesState();

}



class _WhyGoyervDoesNotUseWarehousesState extends State<WhyGoyervDoesNotUseWarehouses> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Bulletin - Why Goyerv Doesn’t Use Warehouses",
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

                    Text("Why Goyerv Doesn’t Use Warehouses", style: Theme.of(context).textTheme.headlineLarge),

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
                            text: "Behind the Scenes",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/behind-the-scenes/why-goyerv-does-not-use-warehouses.html"),
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
                          'https://bulletin.goyerv.com/articles/adrian-sulyok-sczNLg6rrhQ-unsplash.jpg',
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
                            'July 14, 2025 • 2 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''Let’s get one thing straight—warehouses are the backbone of traditional logistics. But at Goyerv, we’re not trying to build what already exists. We’re trying to imagine what’s never been done. And that vision doesn’t include concrete boxes filled with barcodes and forklifts. It includes people. Movement. Intention. Flexibility.\n\nWarehouses are static. Goyerv is kinetic.\n\nThis isn’t a shade session on storage units. Warehouses have their place in global commerce. But we believe the future doesn’t lie in more storage—it lies in smarter motion. In decentralization. In turning everyday journeys into economic pathways. In doing more with what’s already moving.\n\nWe’re not anti-warehouse. We’re post-warehouse.\n\nThe warehouse model requires investment in real estate, maintenance, utilities, staff, and security. It creates bottlenecks and batch cycles. It centers the business around buildings rather than people. We asked ourselves: what if the network was the infrastructure? What if the people were the system? And what if the movement already happening all around us was enough?\n\nThat’s how Goyerv was born.\n\nOur users are the nodes. Their routes are the rails. And the cities they move through? That’s the grid. It’s soft infrastructure, powered by spontaneity.\n\nWhen someone steps into a store and posts their location, they become a living, breathing access point. A pop-up courier hub with a human face. No need for shelves—just presence, intent, and a phone.\n\nWe’ve seen delivery giants race to shrink timeframes and expand storage. One-hour deliveries. Micro-fulfillment centers. Urban warehousing. But we chose to scale differently—horizontally, not vertically.\n\nInstead of compressing the supply chain, we opened it up.\n\nInstead of controlling inventory, we trust our community.\n\nInstead of owning more space, we empower more people.\n\nBy skipping warehouses entirely, we eliminate a huge chunk of overhead. That means more value stays with the Runners and the customers. It’s logistics with fewer middlemen, lower fees, and cleaner footprints.\n\nIt’s also better for the planet.\n\nWarehouses come with emissions—power, heating, cooling, lighting, and constant motion of large vehicles coming and going. But when your infrastructure is made of humans going about their lives, that extra footprint disappears. Every Goyerv delivery is a hitchhiker on an already moving journey. The carbon cost is near zero. The impact is exponential.\n\nLet’s be real—traditional warehousing doesn’t work for everyone. Small businesses often get left out of the fulfillment game because they can’t pay for space, or they don’t move enough volume to justify it. Goyerv levels the playing field by allowing those sellers to connect with runners directly, on demand, with no storage required.\n\nIt’s fulfillment without the facility.\n\nAnd for customers? It’s liberation. You’re not stuck with what’s in the warehouse near you. You can make a request from across town or across the country. If someone’s going that way, your package rides shotgun. That’s reach without real estate. That’s scale without sprawl.\n\nWe’ve also learned that warehousing limits imagination. Once your logistics model is built around inventory sitting still, you stop thinking about how to make things move more meaningfully. You build tech for boxes, not for people.\n\nGoyerv is different. Every line of code we write is about proximity, availability, trust, and timing. It’s built for fluidity. It’s designed for delight. We don’t optimize shelf space—we optimize serendipity.\n\nAnd let’s talk security. One of the common arguments for centralized storage is control—making sure things are safe, tracked, and accounted for. But we’ve flipped the script. Goyerv uses layers of verification, reviews, and real-time communication to build trust between customers and runners. It’s a different kind of accountability—decentralized, but not disorganized.\n\nThe truth is, Goyerv doesn’t need warehouses because our users are already everywhere. They’re in the malls, the markets, the metros. And they’re ready. Ready to help. Ready to earn. Ready to move.\n\nOur system thrives on this readiness. And it evolves with every post, every request, every delivery. It doesn’t require square footage. It requires community.\n\nSo, will we ever build a warehouse? Not a chance.\n\nThat would be like trying to freeze a wave, or bottle a breeze. Goyerv is about flow, not stockpiles. It’s about matching needs to motion, not collecting goods in limbo.\n\nWhen the rest of the world is stacking boxes higher, we’re just helping people reach farther.\n\nThat’s our edge. That’s our promise.\n\nWe don’t need to store the future. We’re already carrying it.\n\nOne delivery at a time.\n\nOne human at a time.\n\nThis is the warehouse-free way.\n\nThis is Goyerv.\n\n''',
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