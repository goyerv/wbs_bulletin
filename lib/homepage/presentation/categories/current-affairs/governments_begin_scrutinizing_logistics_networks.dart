// Copyright (c) 2025 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class GovernmentsBeginScrutinizingLogisticsNetworks extends StatefulWidget {
  
  const GovernmentsBeginScrutinizingLogisticsNetworks({Key? key}) : super(key: key);

  @override
  State<GovernmentsBeginScrutinizingLogisticsNetworks> createState() => _GovernmentsBeginScrutinizingLogisticsNetworksState();

}



class _GovernmentsBeginScrutinizingLogisticsNetworksState extends State<GovernmentsBeginScrutinizingLogisticsNetworks> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Governments Begin Scrutinizing Peer-to-Peer Logistics Networks",
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

                    Text("Governments Begin Scrutinizing Peer-to-Peer Logistics Networks", style: Theme.of(context).textTheme.headlineLarge),

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
                        onTap: () => Share.share("https://bulletin.goyerv.com/articles/current-affairs/governments-begin-scrutinizing-logistics-networks.html"),
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
                          'https://bulletin.goyerv.com/articles/nasser-eledroos-20fmGtxKs_I-unsplash.jpg',
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
                            'December 22, 2025 • 2 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''Across the second half of this year, governments began scrutinizing peer-to-peer logistics networks that connect independent couriers to individuals, businesses, and small retailers. What once operates quietly as informal, on-demand delivery now attracts regulatory attention worldwide. Authorities examine these networks for compliance with labor laws, taxation, insurance, and data privacy, signaling that the era of lightly regulated, decentralized logistics is shifting toward oversight.\n\nIn Europe, countries like Germany, France, and Spain focus on whether couriers qualify as independent contractors or should be treated as employees. Regulators watch algorithmic control, platform-imposed schedules, and the structure of delivery fees. In Latin America, Brazil and Mexico introduce stricter insurance and safety requirements after reports of urban accidents involving informal couriers. In parts of Africa and Asia, authorities pilot digital registration systems to track informal delivery activity and ensure platforms meet local taxation and labor standards.\n\nCouriers and platform operators notice operational changes immediately. Some platforms implement mandatory identity verification, in-app insurance coverage, and clearer contract terms. Others adjust algorithmic controls to maintain legal independence for couriers, giving them more flexibility in accepting jobs or setting schedules. A Madrid-based delivery platform updates onboarding to clarify worker autonomy, while a São Paulo platform launches optional insurance for each package, responding directly to new municipal rules.\n\nFor independent movers, these changes bring both protection and friction. Compliance requirements add paperwork or slightly slower payouts, but they also clarify liability and platform responsibilities. Couriers who adapt quickly gain stability and continue scaling their operations, while those who ignore evolving regulations risk fines, account suspension, or operational interruptions.\n\nThe global signal is clear: peer-to-peer logistics networks are no longer invisible to authorities. Regulators recognize their scale, economic significance, and potential risks. Platforms that embrace transparency, compliance, and respect for worker autonomy thrive as governments define the rules of engagement. For anyone whose work depends on on-demand, cross-border movement, staying informed about regulatory changes becomes as critical as scheduling deliveries or planning routes. Governments are not shutting these networks down—they define the terms under which they survive and grow.\n\n''',
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