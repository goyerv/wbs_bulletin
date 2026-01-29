// Copyright (c) 2025 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class EuropePlatformWorkDirective extends StatefulWidget {
  
  const EuropePlatformWorkDirective({Key? key}) : super(key: key);

  @override
  State<EuropePlatformWorkDirective> createState() => _EuropePlatformWorkDirectiveState();

}



class _EuropePlatformWorkDirectiveState extends State<EuropePlatformWorkDirective> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "How Europe’s Platform Work Directive Redefined Gig Work in 2025",
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

                    Text("How Europe’s Platform Work Directive Redefined Gig Work in 2025", style: Theme.of(context).textTheme.headlineLarge),

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
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/current-affairs/europe-platform-work-directive.html"),
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
                          'https://bulletin.goyerv.com/articles/christian-lue-8Yw6tsB8tnc-unsplash.jpg',
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
                            'September 1, 2025 • 4 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''In the second half of last year, the European Union advanced the Platform Work Directive, marking a decisive shift in how gig work is regulated across member states. The directive was designed to clarify the line between independent work and employment, addressing long-standing ambiguity in platform-based labor models that had scaled faster than regulation could keep up.\n\nAt the center of the directive is a presumption of employment when certain conditions are met. Instead of workers needing to prove misclassification, platforms are required to demonstrate genuine independence. Regulators were given concrete indicators to assess this relationship, including pricing control, restrictions on working across platforms, algorithmic supervision, and limits on how tasks are accepted or declined.\n\t•	Control over pay and assignments\n\t•	Degree of algorithmic oversight\n\t•	Freedom to work for multiple platforms\n\t•	Practical ability to refuse work without penalty\n\nThe timing of the directive reflects a broader shift in perception. Platform work is no longer viewed as a fringe or transitional labor model; it has become embedded in transport, delivery, and cross-border logistics. As reliance increased, so did the pressure on governments to introduce consistency across jurisdictions rather than fragmented national responses.\n\nWhile the directive is European in scope, its effects extend beyond the region. Global platforms often adjust systems uniformly, meaning compliance changes introduced in Europe can influence onboarding processes, contract terms, and operational controls in other markets. In late 2025, these adjustments became visible through updated disclosures, revised terms, and more explicit definitions of worker autonomy.\n\nFor independent runners, the directive introduced a mix of protections and constraints. Increased transparency around algorithmic decisions and clearer dispute mechanisms offered stability, while stricter compliance and documentation requirements added friction. Independence, in practice, became more structured and more scrutinized.\n\nThe broader signal is clear. Governments are no longer questioning the legitimacy of platform work; they are defining the conditions under which it can operate at scale. Regulation is moving from reaction to architecture. For platforms built around human movement rather than centralized fleets, clarity is becoming essential infrastructure.\n\nAs the year closed, Europe’s message was unmistakable: the gig economy is here to stay, but ambiguity is not. Platforms that adapt early and design for regulatory clarity will be better positioned to operate across borders in the years ahead.''',
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