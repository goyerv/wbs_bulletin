// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import '../../../goyerv/presentation/states/languages_state.dart';
import '../../../homepage/presentation/states/homepage_state.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
// import '../../../web_core/internationalization/locales_preferences.dart';





PreferredSizeWidget? appBar(BuildContext context, void Function(void Function() n) setState) {

  return AppBar(
    automaticallyImplyLeading: false,
    // leading: InkWell(onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Goyerv logo'), matchTextDirection: false)),
    title: Row(children: [InkWell(overlayColor: MaterialStateColor.resolveWith((states) => transparent), onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: SizedBox(width: 35.0, height: 35.0, child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Goyerv logo'), matchTextDirection: false))), const SizedBox(width: 10.0),    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Homepage())), style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(transparent)), child: Text(AppLocalizations.of(context).translate('News'), style: Theme.of(context).textTheme.titleLarge))],),
    flexibleSpace: ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0), child: Container(color: transparent))),
  );
  
}


Widget footer(BuildContext context, void Function(void Function() n) setState)  {

  FocusNode focusNodeOne = FocusNode();
  FocusNode focusNodeTwo = FocusNode();
  FocusNode focusNodeThree = FocusNode();
  FocusNode focusNodeFour = FocusNode();
  FocusNode focusNodeFive = FocusNode();
  FocusNode focusNodeSix = FocusNode();
  // LocalesPreferencesImpl localesPreferences = LocalesPreferencesImpl(SharedPreferences.getInstance());
  // String language = await localesPreferences.getLanguageKey();
  
  
  
  Uri uri = Uri.parse('https://www.goyerv.com');
  Uri uriTerms = Uri.parse('https://legal.goyerv.com');
  Uri uriPrivacy = Uri.parse('https://legal.goyerv.com');
  Uri uriCareers = Uri.parse('https://careers.goyerv.com');
  Uri uriResources = Uri.parse('https://resources.goyerv.com');
  Uri uriSupport = Uri.parse('https://support.goyerv.com');


  return Container(
    alignment: FractionalOffset.bottomCenter,
    height: MediaQuery.of(context).size.width < 1100? MediaQuery.of(context).size.height * 0.3 : 90,
    color: Theme.of(context).primaryColorDark,
    padding: MediaQuery.of(context).size.width < 1100? const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0) : const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    child: Wrap(
      alignment: MediaQuery.of(context).size.width < 1100? WrapAlignment.center : WrapAlignment.start,
      // crossAxisAlignment: MediaQuery.of(context).size.width < 1100? WrapCrossAlignment.start : WrapCrossAlignment.end,
      children: [
        

        Wrap(
          spacing: MediaQuery.of(context).size.width < 1100? 0.0 : 40.0,
          alignment: MediaQuery.of(context).size.width < 1100? WrapAlignment.center : WrapAlignment.start,
          children: [
           
            MediaQuery.of(context).size.width < 1100? Container() : RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: '${AppLocalizations.of(context).translate('Goyerv')} ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uri), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('LLC. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ])),

            MediaQuery.of(context).size.width < 1100? Container() : sbwavg,


            TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Terms'), style: Theme.of(context).textTheme.labelSmall),),

            TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeTwo, child: Text(AppLocalizations.of(context).translate('Privacy'), style: Theme.of(context).textTheme.labelSmall),),

            TextButton(onPressed: () => launchUrl(uriSupport), focusNode: focusNodeThree, child: Text(AppLocalizations.of(context).translate('Support'), style: Theme.of(context).textTheme.labelSmall),),

            TextButton(onPressed: () => launchUrl(uriCareers), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Careers'), style: Theme.of(context).textTheme.labelSmall),),
            
            TextButton(onPressed: () => launchUrl(uriResources), focusNode: focusNodeFive, child: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.labelSmall),),
            
            sbwavg,
            
            MediaQuery.of(context).size.width < 1100? Container() : TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())), focusNode: focusNodeSix, style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(transparent)), child: RichText(text: TextSpan(children: [ WidgetSpan(child: Icon(Icons.language, color: Theme.of(context).iconTheme.color, size: 20.0, semanticLabel: AppLocalizations.of(context).translate('Globe(Language) icon'))), WidgetSpan(child: sbwmin,), TextSpan(text: AppLocalizations.of(context).translate('English'), style: Theme.of(context).textTheme.labelSmall), ] ))),
            

          ]
        ),


        MediaQuery.of(context).size.width < 1100? sbhmax : Container(),
      

        MediaQuery.of(context).size.width < 1100? RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: '${AppLocalizations.of(context).translate('Goyerv')} ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uri), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('LLC. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ])) : Container(),


        MediaQuery.of(context).size.width < 1100? sbhavg : Container(),



        MediaQuery.of(context).size.width < 1100? TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())), focusNode: focusNodeSix, style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(transparent)), child:  Row(mainAxisAlignment: MainAxisAlignment.end, children: [RichText(text: TextSpan(children: [ WidgetSpan(child: Icon(Icons.language, color: Theme.of(context).iconTheme.color, size: 20.0, semanticLabel: AppLocalizations.of(context).translate('Globe(Language) icon'))), WidgetSpan(child: SizedBox(width: 10),), TextSpan(text: AppLocalizations.of(context).translate('English'), style: Theme.of(context).textTheme.labelSmall), ] )), sbwmin ],)) : Container(),


        
        
      
      ]
    
    ),
  );
}




