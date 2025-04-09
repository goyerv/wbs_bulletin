// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../widget/presentation/states/widget.dart';
import '../categories/behind the scenes/why_goyerv_dose_not_use_warehouses.dart';
import '../categories/economic impact & access/helping_underserved_communities.dart';
import '../categories/sustainability & innovation/goyerv_is_green.dart';
import '../categories/vision & philosophy/the_rise_of_peer_logistics.dart';
import '../categories/vision & philosophy/we_are_a_movement.dart';



class Homepage extends StatefulWidget {
  
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

}



class _HomepageState extends State<Homepage> {





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
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  children: [


                    Wrap(
                      spacing: 30.0,
                      runSpacing: 30.0,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [


                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const GoyervIsGreen())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 74,
                                  child: Image.network("https://www.goyerv.com/assets/bulletin/goyerv-green-logo.png", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 23,
                                  child: Text("\nGoyerv is Green\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),




                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const WhyGoyervDoesNotUseWarehouses())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 72,
                                  child: Image.network("https://www.goyerv.com/assets/bulletin/goyerv-green-logo.png", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 23,
                                  child: Text("\nWhy Goyerv Doesn’t Use Warehouses\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const HelpingUnderServedCommunities())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://www.goyerv.com/assets/bulletin/goyerv-green-logo.png", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nGoyerv as a Lifeline: Helping Underserved Communities Trade and Thrive\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),



                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const TheRiseOfPeerLogistics())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://www.goyerv.com/assets/bulletin/goyerv-green-logo.png", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nFrom Uber to Airbnb to Goyerv: The Rise of Peer-Logistics\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),




                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const WeAreAMovement())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://www.goyerv.com/assets/bulletin/goyerv-green-logo.png", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nWe’re Not a Delivery App—We’re a Movement\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),











                      ],
                    )

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }



} 
