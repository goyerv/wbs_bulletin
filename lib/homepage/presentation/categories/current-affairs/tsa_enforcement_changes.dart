// Copyright (c) 2025 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class TSAEnforcementChanges extends StatefulWidget {
  
  const TSAEnforcementChanges({Key? key}) : super(key: key);

  @override
  State<TSAEnforcementChanges> createState() => _TSAEnforcementChangesState();

}



class _TSAEnforcementChangesState extends State<TSAEnforcementChanges> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "TSA’s 2025 Enforcement Changes: What Travelers Are Being Stopped for Now",
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

                    Text("TSA’s 2025 Enforcement Changes: What Travelers Are Being Stopped for Now", style: Theme.of(context).textTheme.headlineLarge),

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
                            text: "Current Affairs",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/current-affairs/tsa-enforcement-changes.html"),
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
                          'https://bulletin.goyerv.com/articles/patty-zavala-TKwGZ9a6YHU-unsplash.jpg',
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
                            'October 28, 2025 • 2 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''Travelers passing through U.S. airports notice a clear shift in airport security. It isn’t announced with sweeping policy changes, but it shows up in longer secondary screenings, more frequent bag checks, and an increasing number of passengers being stopped for items that previously drew little attention. The Transportation Security Administration is enforcing existing rules more strictly and consistently as passenger volumes climb back to pre-pandemic levels.\n\nThe focus isn’t on rewriting regulations, but on closing gray areas. Carry-on items that once passed with a warning are now flagged more often. Oversized liquids, loosely packed electronics, and spare lithium batteries draw closer scrutiny. Identification checks tighten, particularly for travelers using temporary IDs or documents outside standard formats, as enforcement around REAL ID requirements becomes less forgiving ahead of full rollout.\n\nTechnology plays a central role in this shift. TSA expands the use of automated screening lanes and advanced imaging systems, reducing reliance on individual officer discretion. Bags are flagged by algorithms before reaching an officer, and those alerts are rarely overridden. Travelers notice inconsistencies across airports, even though the underlying process is becoming more standardized. What feels subjective often depends on different equipment, traffic levels, or system thresholds.\n\nFor frequent travelers and cross-border runners, the impact is immediate. Habits formed over years—what to pack, how tightly to comply, which items are “usually fine”—become less reliable. Items carried routinely without issue now cause delays. Explanations matter less than compliance, and familiarity with security staff no longer translates into flexibility.\n\nThe broader signal points to direction, not discipline. As global travel scales and security agencies rely more on automation, enforcement shifts from discretionary judgment to procedural certainty. Rules haven’t changed dramatically, but tolerance for deviation is clearly lower. For anyone whose work depends on movement, staying current with security expectations is no longer optional—it is part of operating responsibly in an increasingly regulated travel environment.\n\n''',
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